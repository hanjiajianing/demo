package com.hua.dao;

import com.hua.jdbcutil.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.sql.Connection;
import java.util.List;

/**
 * 封装了基本的CRUD的方法，以供子类继承使用
 * 当前DAO直接在方法中获取数据库连接。
 * 整个DAO采用DBUtils解决方案。
 * @author hua
 *
 */
public class DAO<T> {
	private QueryRunner qr = new QueryRunner();

	private Class<T> clazz;

	@SuppressWarnings("unchecked")
	public DAO(){
		//获取超类
		Type superClass = getClass().getGenericSuperclass();
        //检查超类是否是参数化类型
		if(superClass instanceof ParameterizedType){
            //将超类转化为参数化类型对象
			ParameterizedType pt = (ParameterizedType)superClass;
               //将参数化类型的实际参数以数组形式保存
			Type[] typeArgs = pt.getActualTypeArguments();

			if(typeArgs != null && typeArgs.length > 0){
				if(typeArgs[0] instanceof Class){
					//将第一的类型参数传给clazz
					clazz = (Class<T>)typeArgs[0];
				}
			}
		}
	}

	/**
	 * 返回对应的T的一个实例类的对象
	 * @param sql
	 * @param args
	 * @return
	 */
	public T get(String sql, Object...args){
		Connection conn = null;

		try {
			conn = JDBCUtils.getConnection();
			return qr.query(conn, sql,new BeanHandler<>(clazz),args);

		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			JDBCUtils.closeConnection(conn);
		}

		return null;
	}

	/**
	 * 返回T对应的List
	 * @param sql
	 * @param args
	 * @return
	 */
	public List<T> getForList(String sql, Object...args){
		Connection conn = null;

		try {
			conn = JDBCUtils.getConnection();
			return qr.query(conn, sql, new BeanListHandler<>(clazz), args);

		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			JDBCUtils.closeConnection(conn);
		}

		return null;
	}

	/**
	 * 该方法封装了Insert、Delete、Update操作
	 * @param sql : SQL语句
	 * @param args
	 */
	public void update(String sql, Object...args){
		Connection conn = null;
		try {
			conn = JDBCUtils.getConnection();
			qr.update(conn, sql, args);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			JDBCUtils.closeConnection(conn);
		}
	}

	/**
	 * 返回某个字段的值，例如返回某一条记录的customerName，或返回数据表中有多少条记录
	 * @param sql
	 * @param args
	 * @return
	 */
	public <E> E getForValue(String sql, Object...args){
		Connection conn = null;
		try {
			conn = JDBCUtils.getConnection();
			return qr.query(conn, sql,new ScalarHandler<E>(),args);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			JDBCUtils.closeConnection(conn);
		}

		return null;
	}
}
