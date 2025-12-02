package dev.faleite.schedule.mapper;

import dev.faleite.schedule.dto.ScheduleCreateRequest;
import dev.faleite.schedule.dto.ScheduleResponse;
import dev.faleite.schedule.dto.ScheduleUpdateRequest;
import dev.faleite.schedule.model.Schedule;
import dev.faleite.schedule.model.ScheduleStatus;

import java.time.LocalDateTime;

public class ScheduleMapper {

    public static Schedule toEntity(ScheduleCreateRequest request) {
        Schedule schedule = new Schedule();
        schedule.setTitle(request.title());
        schedule.setDescription(request.description());
        schedule.setStartDate(request.startDate());
        schedule.setEndDate(request.endDate());
        schedule.setUsername(request.username());
        schedule.setStatus(ScheduleStatus.SCHEDULED);
        schedule.setCreatedAt(LocalDateTime.now());
        schedule.setUpdatedAt(LocalDateTime.now());
        return schedule;
    }

    public static ScheduleResponse toResponse(Schedule schedule) {
        return new ScheduleResponse(
                schedule.getId(),
                schedule.getTitle(),
                schedule.getDescription(),
                schedule.getStartDate(),
                schedule.getEndDate(),
                schedule.getStatus(),
                schedule.getUsername(),
                schedule.getCreatedAt(),
                schedule.getUpdatedAt()
        );
    }

    public static void merge(Schedule entity, ScheduleUpdateRequest request) {
        if (request.title() != null) {entity.setTitle(request.title());}
        if (request.description() != null) {entity.setDescription(request.description());}
        if (request.startDate() != null) {entity.setStartDate(request.startDate());}
        if (request.endDate() != null) {entity.setEndDate(request.endDate());}
    }
}
