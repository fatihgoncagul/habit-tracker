package com.habit.habittrackerv2.repository;

import com.habit.habittrackerv2.model.Activity;
import org.springframework.data.jpa.repository.JpaRepository;

                                                    //<Domain Object, Unique Identifier'ın veri tipi>
public interface ActivityRepository extends JpaRepository<Activity,Integer> {

}
