package jee.support.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class) //使用junit4进行测试
@ContextConfiguration(locations={"classpath:config/applicationContext.xml"})

public class AttachmentDaoTest {

    @Autowired
    //AttachmentDao attachmentDao;
    @Test
    public void delete() {
    }

    @Test
    public void findByTicketId() {
//        List list = attachmentDao.findByStudentId(23);
//        list.forEach(s->System.out.println(s));
    }
}