package org.hank.harvest.utils;

import java.io.*;

/**
 * Created by Administrator on 2016/6/7.
 */
public class DBBackupUtil {

    private static DBBackupUtil instance = null;

    private DBBackupUtil() {

    }

    public static DBBackupUtil getInstance() {
        if (instance == null) {
            synchronized (DBBackupUtil.class) {
                if (instance == null) {
                    instance = new DBBackupUtil();
                }
            }
        }
        return instance;
    }

    public void backup(OutputStream output, String dbname) {
        String mysqlBinPath = "~/mysql/";
        String username = "root";
        String password = "DEBUG";

        String command = "cmd /c " + mysqlBinPath + "mysqldump -u" + username
                + " -p" + password + " --set-charset=utf8 " + dbname;
        PrintWriter p = null;
        BufferedReader reader = null;
        try {
            p = new PrintWriter(new OutputStreamWriter(output, "utf8"));
            Process process = Runtime.getRuntime().exec(command);
            InputStreamReader inputStreamReader = new InputStreamReader(process
                    .getInputStream(), "utf8");
            reader = new BufferedReader(inputStreamReader);
            String line = null;
            while ((line = reader.readLine()) != null) {
                p.println(line);
            }
            p.flush();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (reader != null) {
                    reader.close();
                }
                if (p != null) {
                    p.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }


}
