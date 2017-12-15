package mypack;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.FSDataOutputStream;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.fs.FSDataInputStream;
import org.apache.hadoop.hdfs.server.namenode.Content;

import java.io.*;
public class file{

	public static void main(String[] args) {
		String []x=new String[50];

		try
		{
			int n=0,z=0;
			Configuration conf=new Configuration();
			conf.set("fs.defaultFS", "hdfs://localhost:9000");
			conf.set("fs.hdfs.omp", "org.apache.hadoop.hdfs.DistributedFileSystem");
			FileSystem fs=FileSystem.get(conf);
			Path file1=new Path("/music/output/part-r-00000");
		
			FSDataInputStream getIt1=fs.open(file1);
		
			BufferedReader d1=new BufferedReader(new InputStreamReader(getIt1));
			String string= "";
			String []c;
			while((string = d1.readLine())!=null){
				c=string.toString().split("\t");
				//System.out.println(string);
			}
			
		    	
		
			//System.out.println(content);
			d1.close();
			fs.close();String s="";
//			for(int i=0;x[i]!=null;i++)
//				for(int j=i;x[j]!=null;j++)
//				{
//					if(Integer.parseInt(x[i])<Integer.parseInt(x[j]))
//					{
//						s=x[i];
//						x[i]=x[j];
//						x[j]=s;
//					}
//					
//				}
					for(int i=0;x[i]!=null;i++)
						System.out.println(x[i]);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		try
		{
			Configuration conf=new Configuration();
			conf.set("fs.defaultFS", "hdfs://localhost:9000");
			conf.set("fs.hdfs.omp", "org.apache.hadoop.hdfs.DistributedFileSystem");
			FileSystem fs=FileSystem.get(conf);
		    String s="";int i=0;
		    while(x[i]!=null)
		    {
		    	s+=x[i]+" ";
		    	i++;
		    }
			byte[] buff=s.getBytes();
			String filename="/text3";
			FSDataOutputStream os=fs.create(new Path(filename));
			
			os.write(buff,0,buff.length);
			System.out.println("Creat:"+filename);
			
			
			os.close();
			fs.close();
		}

		catch(Exception e)
		{
			e.printStackTrace();
		}


	}

}
