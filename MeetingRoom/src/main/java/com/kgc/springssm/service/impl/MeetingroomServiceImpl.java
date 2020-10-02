package com.kgc.springssm.service.impl;

import com.kgc.springssm.mapper.MeetingroomMapper;
import com.kgc.springssm.pojo.Meetingroom;
import com.kgc.springssm.service.MeetingroomService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-02 8:21
 */
@Service
public class MeetingroomServiceImpl  implements MeetingroomService{
    @Resource
    MeetingroomMapper meetingroomMapper;

    @Override
    public List<Meetingroom> selectAll() {
        List<Meetingroom> meetingrooms = meetingroomMapper.selectByExample(null);
        return meetingrooms;
    }

    @Override
    public int add(Meetingroom meetingroom) {
        int i = meetingroomMapper.insertSelective(meetingroom);
        return i;
    }
}
