package com.bytedance.sdk.openadsdk.b;

/* JADX INFO: compiled from: StatsEventRepertoryImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class n {
    public static String a() {
        return "CREATE TABLE IF NOT EXISTS logstats (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , encrypt INTEGER default 0 , retry INTEGER default 0)";
    }

    public static String b() {
        return "ALTER TABLE logstats ADD COLUMN encrypt INTEGER default 0";
    }
}
