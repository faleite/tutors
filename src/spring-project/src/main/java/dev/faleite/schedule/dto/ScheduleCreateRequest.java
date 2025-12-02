package dev.faleite.schedule.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

import java.time.LocalDateTime;

public record ScheduleCreateRequest(
        @NotBlank @Size(max = 120) String title,
        @Size(max = 4000) String description,
        @NotNull LocalDateTime startDate,
        @NotNull LocalDateTime endDate,
        @NotBlank @Size(max = 80) String username
) {
}
