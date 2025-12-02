package dev.faleite.schedule.service;

import dev.faleite.schedule.dto.ScheduleCreateRequest;
import dev.faleite.schedule.dto.ScheduleResponse;
import dev.faleite.schedule.dto.ScheduleUpdateRequest;
import dev.faleite.schedule.exceptions.ResourceNotFoundException;
import dev.faleite.schedule.mapper.ScheduleMapper;
import dev.faleite.schedule.model.Schedule;
import dev.faleite.schedule.model.ScheduleStatus;
import dev.faleite.schedule.repository.ScheduleRepository;
import jakarta.transaction.Transactional;
import jakarta.validation.Valid;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class ScheduleService {

    private final ScheduleRepository repository;

    public ScheduleService(ScheduleRepository repository) {
        this.repository = repository;
    }

    @Transactional
    public ScheduleResponse create(@Valid ScheduleCreateRequest request) {
        IntervalValidate(request.startDate(), request.endDate());
        checkConflict(request.username(), request.startDate(), request.endDate(), null);

        Schedule entity = ScheduleMapper.toEntity(request);
        entity = repository.save(entity);
        return ScheduleMapper.toResponse(entity);
    }

    @Transactional
    public ScheduleResponse findSchedulingById(Long id) {
        Schedule entity = repository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Scheduling by ID " +id+ " not found"));
        return ScheduleMapper.toResponse(entity);
    }

    @Transactional
    public List<ScheduleResponse> listSchedules() {
        return repository.findAll()
                .stream()
                .map(ScheduleMapper::toResponse)
                .toList();
    }

    @Transactional
    public ScheduleResponse update(Long id, @Valid ScheduleUpdateRequest request) {
        Schedule entity = repository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Scheduling by ID " +id+ " not found"));
        ScheduleMapper.merge(entity, request);

        if (request.startDate() != null || request.endDate() != null) {
            IntervalValidate(request.startDate(), request.endDate());
            checkConflict(entity.getUsername(), request.startDate(), request.endDate(), entity.getId());
        }
        entity.setUpdatedAt(LocalDateTime.now());

        entity = repository.save(entity);
        return ScheduleMapper.toResponse(entity);
    }

    @Transactional
    public ScheduleResponse cancel(Long id) {
        Schedule entity = repository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Scheduling by ID " +id+ " not found"));
        entity.setStatus(ScheduleStatus.CANCELED);
        entity = repository.save(entity);
        return ScheduleMapper.toResponse(entity);
    }

    @Transactional
    public ScheduleResponse completed(Long id) {
        Schedule entity = repository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Scheduling by ID " +id+ " not found"));
        entity.setStatus(ScheduleStatus.COMPLETED);
        entity = repository.save(entity);
        return ScheduleMapper.toResponse(entity);
    }

    @Transactional
    public void deleteSchedulingById(Long id) {
        if (!repository.existsById(id)) {
            throw new ResourceNotFoundException("Scheduling by ID " +id+ " not found");
        }
        repository.deleteById(id);
    }

    private void IntervalValidate(LocalDateTime start, LocalDateTime end) {
        if (start == null || end == null || !start.isBefore(end)) {
            throw new IllegalArgumentException("Invalid interval: start date must be different from the end date");
        }
    }

    private void checkConflict(String username, LocalDateTime start,
                                     LocalDateTime end, Long id) {
        if (repository.existsConflict(username, start, end, id)) {
            throw new IllegalArgumentException("Schedule conflict: There is already an scheduling for this period.");
        }
    }
}
