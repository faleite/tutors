package dev.faleite.schedule.dto;

import jakarta.validation.constraints.Size;

import java.time.LocalDateTime;

public record ScheduleUpdateRequest(
        @Size(max = 120) String title,
        @Size(max = 4000) String description,
        LocalDateTime startDate,
        LocalDateTime endDate
) {
}
