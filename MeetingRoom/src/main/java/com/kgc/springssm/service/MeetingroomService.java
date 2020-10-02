package com.kgc.springssm.service;

import com.kgc.springssm.pojo.Meetingroom;

import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-02 8:21
 */
public interface MeetingroomService {
    List<Meetingroom> selectAll();

    int add(Meetingroom meetingroom);
}
