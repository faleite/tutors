package dev.faleite.schedule.repository;

import dev.faleite.schedule.model.Schedule;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;

@Repository
public interface ScheduleRepository extends JpaRepository<Schedule, Long> {

    @Query("""
        SELECT CASE WHEN COUNT(s) > 0 THEN true ELSE false END
            FROM Schedule s
            WHERE s.username = :username
                AND s.status = dev.faleite.schedule.model.ScheduleStatus.SCHEDULED
                AND (s.startDate < :end AND s.endDate > :start)
                AND (:ignoreId IS NULL OR s.id <> :ignoreId)
    """)
    boolean existsConflict(
            @Param("username") String username,
            @Param("start") LocalDateTime start,
            @Param("end") LocalDateTime end,
            @Param("ignoreId") Long ignoreId);
}
