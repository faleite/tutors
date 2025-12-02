package dev.faleite.schedule.dto;

import dev.faleite.schedule.model.ScheduleStatus;

import java.time.LocalDateTime;

public record ScheduleResponse(
        Long id,
        String title,
        String description,
        LocalDateTime startDate,
        LocalDateTime endDate,
        ScheduleStatus status,
        String username,
        LocalDateTime createdAt,
        LocalDateTime updateAt

) {
}
