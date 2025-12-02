package dev.faleite.schedule.controller;

import dev.faleite.schedule.dto.ScheduleCreateRequest;
import dev.faleite.schedule.dto.ScheduleResponse;
import dev.faleite.schedule.dto.ScheduleUpdateRequest;
import dev.faleite.schedule.service.ScheduleService;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.net.URI;
import java.util.List;

@RestController
@RequestMapping("api/schedule")
public class ScheduleController {

    private final ScheduleService service;

    public ScheduleController(ScheduleService service) {
        this.service = service;
    }

    /* Outro forma
    @PostMapping
    public ResponseEntity<ScheduleResponse> createScheduling(@RequestBody ScheduleCreateRequest request) {
        ScheduleResponse created = service.create(request);
        return ResponseEntity.status(HttpStatus.CREATED).body(created);
    }*/
    @PostMapping
    public ResponseEntity<ScheduleResponse> createScheduling(@RequestBody @Valid ScheduleCreateRequest request) {
        ScheduleResponse created = service.create(request);
        URI location = URI.create("/api/schedule/" + created.id());
        return ResponseEntity.created(location).body(created);
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> findSchedulingById(@PathVariable Long id) {
        ScheduleResponse response = service.findSchedulingById(id);
        return ResponseEntity.ok(response);
    }

    @GetMapping
    public ResponseEntity<List<ScheduleResponse>> listSchedules() {
        List<ScheduleResponse> responseList = service.listSchedules();
        return ResponseEntity.ok(responseList);
        // return ResponseEntity.ok(service.listSchedules()); // mais clean
    }

    @PutMapping("/{id}")
    public ResponseEntity<ScheduleResponse> updateScheduling(
            @PathVariable Long id,
            @RequestBody @Valid ScheduleUpdateRequest request
    ) {
        ScheduleResponse response = service.update(id, request);
        return ResponseEntity.ok(response);
    }

    @PostMapping("/{id}/cancel")
    public ResponseEntity<ScheduleResponse> cancelScheduling(@PathVariable Long id) {
        ScheduleResponse response = service.cancel(id);
        return ResponseEntity.ok(response);
    }

    @PostMapping("/{id}/completed")
    public ResponseEntity<ScheduleResponse> completedScheduling(@PathVariable Long id) {
        ScheduleResponse response = service.completed(id);
        return ResponseEntity.ok(response);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteScheduling(@PathVariable Long id) {
        service.deleteSchedulingById(id);
        return ResponseEntity.noContent().build();
    }

}
