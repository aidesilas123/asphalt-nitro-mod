package com.kidoz.sdk.api.general.database;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.kidoz.sdk.api.anr_handler.ANRBuster;
import com.kidoz.sdk.api.general.database.BaseTable;
import com.kidoz.sdk.api.general.utils.PropertiesObj;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class ConfigurationTable extends BaseTable {
    private static final String COLUMN_PROPERTY_KEY = "COLUMN_PROPERTY_KEY";
    private static final String COLUMN_PROPERTY_VALUE = "COLUMN_PROPERTY_VALUE";
    public static final String TABLE_NAME = "PropertiesTable";
    private final String TAG;

    public ConfigurationTable(DatabaseManager databaseManager, Object obj) {
        super(databaseManager, obj);
        this.TAG = ConfigurationTable.class.getName();
    }

    public static synchronized void onCreate(SQLiteDatabase sQLiteDatabase) {
        if (sQLiteDatabase != null) {
            sQLiteDatabase.execSQL("CREATE TABLE PropertiesTable(COLUMN_PROPERTY_KEY TEXT PRIMARY KEY ,COLUMN_PROPERTY_VALUE TEXT)");
        }
    }

    public static synchronized void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    public synchronized void deleteProperties() {
        if (this.mDBmanager != null) {
            clearTable(TABLE_NAME);
        }
    }

    public synchronized void deleteProperty(String str) {
        synchronized (this.mSyncObject) {
            if (str != null) {
                int i = 0;
                try {
                    int iDelete = this.mDBmanager.handleDatabase(true).delete(TABLE_NAME, "COLUMN_PROPERTY_KEY=?", new String[]{str});
                    if (iDelete == -1) {
                        iDelete = 0;
                    }
                    this.mDBmanager.handleDatabase(false);
                    i = iDelete;
                } catch (Exception unused) {
                    this.mDBmanager.handleDatabase(false);
                } catch (Throwable th) {
                    this.mDBmanager.handleDatabase(false);
                    throw th;
                }
                BaseTable.printDBLog(BaseTable.DBactionType.DELETE, "deleteProperty", TABLE_NAME, i);
            }
        }
    }

    public synchronized void insertAppProperties(final PropertiesObj propertiesObj) {
        if (this.mDBmanager != null && propertiesObj != null && propertiesObj.getProperties() != null && propertiesObj.getProperties().length() > 0) {
            synchronized (this.mSyncObject) {
                new ANRBuster<Void, Void>() { // from class: com.kidoz.sdk.api.general.database.ConfigurationTable.1
                    @Override // com.kidoz.sdk.api.anr_handler.ANRBuster
                    public void onANRDetected() {
                    }

                    /* JADX WARN: Finally extract failed */
                    /* JADX WARN: Removed duplicated region for block: B:26:0x0080 A[PHI: r2 r6
                      0x0080: PHI (r2v3 android.database.sqlite.SQLiteDatabase) = (r2v2 android.database.sqlite.SQLiteDatabase), (r2v9 android.database.sqlite.SQLiteDatabase) binds: [B:25:0x007e, B:13:0x0050] A[DONT_GENERATE, DONT_INLINE]
                      0x0080: PHI (r6v2 int) = (r6v1 int), (r6v5 int) binds: [B:25:0x007e, B:13:0x0050] A[DONT_GENERATE, DONT_INLINE]] */
                    @Override // com.kidoz.sdk.api.anr_handler.ANRBuster
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct code enable 'Show inconsistent code' option in preferences
                    */
                    public java.lang.Void onStart(java.lang.Void r10) {
                        /*
                            r9 = this;
                            java.lang.String r10 = "PropertiesTable"
                            r0 = 0
                            r1 = 0
                            com.kidoz.sdk.api.general.database.ConfigurationTable r2 = com.kidoz.sdk.api.general.database.ConfigurationTable.this     // Catch: java.lang.Throwable -> L57
                            com.kidoz.sdk.api.general.database.DatabaseManager r2 = r2.mDBmanager     // Catch: java.lang.Throwable -> L57
                            r3 = 1
                            android.database.sqlite.SQLiteDatabase r2 = r2.handleDatabase(r3)     // Catch: java.lang.Throwable -> L57
                            r2.beginTransaction()     // Catch: java.lang.Throwable -> L55
                            android.content.ContentValues r3 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L55
                            r3.<init>()     // Catch: java.lang.Throwable -> L55
                            com.kidoz.sdk.api.general.utils.PropertiesObj r4 = r2     // Catch: java.lang.Throwable -> L55
                            org.json.JSONObject r4 = r4.getProperties()     // Catch: java.lang.Throwable -> L55
                            java.util.Iterator r5 = r4.keys()     // Catch: java.lang.Throwable -> L55
                            r6 = 0
                        L20:
                            boolean r7 = r5.hasNext()     // Catch: java.lang.Throwable -> L53
                            if (r7 == 0) goto L46
                            java.lang.Object r7 = r5.next()     // Catch: java.lang.Throwable -> L53
                            java.lang.String r7 = (java.lang.String) r7     // Catch: java.lang.Throwable -> L53
                            java.lang.String r8 = "COLUMN_PROPERTY_KEY"
                            r3.put(r8, r7)     // Catch: java.lang.Throwable -> L53
                            java.lang.String r8 = "COLUMN_PROPERTY_VALUE"
                            java.lang.String r7 = r4.getString(r7)     // Catch: java.lang.Throwable -> L53
                            r3.put(r8, r7)     // Catch: java.lang.Throwable -> L53
                            r7 = 5
                            long r7 = r2.insertWithOnConflict(r10, r0, r3, r7)     // Catch: java.lang.Throwable -> L53
                            int r8 = (int) r7     // Catch: java.lang.Throwable -> L53
                            r7 = -1
                            if (r8 == r7) goto L20
                            int r6 = r6 + 1
                            goto L20
                        L46:
                            r2.yieldIfContendedSafely()     // Catch: java.lang.Throwable -> L53
                            r2.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L53
                            boolean r3 = r2.inTransaction()
                            if (r3 == 0) goto L83
                            goto L80
                        L53:
                            r3 = move-exception
                            goto L5a
                        L55:
                            r3 = move-exception
                            goto L59
                        L57:
                            r3 = move-exception
                            r2 = r0
                        L59:
                            r6 = 0
                        L5a:
                            com.kidoz.sdk.api.general.database.ConfigurationTable r4 = com.kidoz.sdk.api.general.database.ConfigurationTable.this     // Catch: java.lang.Throwable -> L92
                            java.lang.String r4 = com.kidoz.sdk.api.general.database.ConfigurationTable.access$000(r4)     // Catch: java.lang.Throwable -> L92
                            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L92
                            r5.<init>()     // Catch: java.lang.Throwable -> L92
                            java.lang.String r7 = "Error when trying to insert app properties : "
                            r5.append(r7)     // Catch: java.lang.Throwable -> L92
                            java.lang.String r3 = r3.getMessage()     // Catch: java.lang.Throwable -> L92
                            r5.append(r3)     // Catch: java.lang.Throwable -> L92
                            java.lang.String r3 = r5.toString()     // Catch: java.lang.Throwable -> L92
                            com.kidoz.sdk.api.general.utils.SDKLogger.printErrorLog(r4, r3)     // Catch: java.lang.Throwable -> L92
                            if (r2 == 0) goto L83
                            boolean r3 = r2.inTransaction()
                            if (r3 == 0) goto L83
                        L80:
                            r2.endTransaction()
                        L83:
                            com.kidoz.sdk.api.general.database.ConfigurationTable r2 = com.kidoz.sdk.api.general.database.ConfigurationTable.this
                            com.kidoz.sdk.api.general.database.DatabaseManager r2 = r2.mDBmanager
                            r2.handleDatabase(r1)
                            com.kidoz.sdk.api.general.database.BaseTable$DBactionType r1 = com.kidoz.sdk.api.general.database.BaseTable.DBactionType.INSERT
                            java.lang.String r2 = "insertAppProperties"
                            com.kidoz.sdk.api.general.database.BaseTable.printDBLog(r1, r2, r10, r6)
                            return r0
                        L92:
                            r10 = move-exception
                            if (r2 == 0) goto L9e
                            boolean r0 = r2.inTransaction()
                            if (r0 == 0) goto L9e
                            r2.endTransaction()
                        L9e:
                            com.kidoz.sdk.api.general.database.ConfigurationTable r0 = com.kidoz.sdk.api.general.database.ConfigurationTable.this
                            com.kidoz.sdk.api.general.database.DatabaseManager r0 = r0.mDBmanager
                            r0.handleDatabase(r1)
                            throw r10
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.kidoz.sdk.api.general.database.ConfigurationTable.AnonymousClass1.onStart(java.lang.Void):java.lang.Void");
                    }

                    @Override // com.kidoz.sdk.api.anr_handler.ANRBuster
                    public void onSuccess() {
                    }
                }.start();
            }
        }
    }

    public synchronized void insertAppPropertiesAsync(final PropertiesObj propertiesObj) {
        new Thread(new Runnable() { // from class: com.kidoz.sdk.api.general.database.ConfigurationTable.2
            @Override // java.lang.Runnable
            public void run() {
                ConfigurationTable.this.insertAppProperties(propertiesObj);
            }
        }).start();
    }

    public synchronized void insertProperties(String str, JSONObject jSONObject) {
        DatabaseManager databaseManager;
        if (this.mDBmanager != null && jSONObject != null && str != null) {
            synchronized (this.mSyncObject) {
                SQLiteDatabase sQLiteDatabase = null;
                try {
                    SQLiteDatabase sQLiteDatabaseHandleDatabase = this.mDBmanager.handleDatabase(true);
                    try {
                        sQLiteDatabaseHandleDatabase.beginTransaction();
                        ContentValues contentValues = new ContentValues();
                        contentValues.put(COLUMN_PROPERTY_KEY, str);
                        contentValues.put(COLUMN_PROPERTY_VALUE, jSONObject.toString());
                        sQLiteDatabaseHandleDatabase.insertWithOnConflict(TABLE_NAME, null, contentValues, 5);
                        sQLiteDatabaseHandleDatabase.yieldIfContendedSafely();
                        sQLiteDatabaseHandleDatabase.setTransactionSuccessful();
                        if (sQLiteDatabaseHandleDatabase.inTransaction()) {
                            sQLiteDatabaseHandleDatabase.endTransaction();
                        }
                        databaseManager = this.mDBmanager;
                    } catch (Throwable th) {
                        th = th;
                        sQLiteDatabase = sQLiteDatabaseHandleDatabase;
                        try {
                            SDKLogger.printErrorLog(this.TAG, "Error when trying to insert properties : " + th.getMessage());
                            if (sQLiteDatabase != null && sQLiteDatabase.inTransaction()) {
                                sQLiteDatabase.endTransaction();
                            }
                            databaseManager = this.mDBmanager;
                        } catch (Throwable th2) {
                            if (sQLiteDatabase != null && sQLiteDatabase.inTransaction()) {
                                sQLiteDatabase.endTransaction();
                            }
                            this.mDBmanager.handleDatabase(false);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
                databaseManager.handleDatabase(false);
                BaseTable.printDBLog(BaseTable.DBactionType.INSERT, "insertProperties", TABLE_NAME, 0);
            }
        }
    }

    public synchronized PropertiesObj loadAppProperties() {
        PropertiesObj propertiesObj;
        PropertiesObj propertiesObjStart;
        propertiesObj = null;
        if (this.mDBmanager != null) {
            synchronized (this.mSyncObject) {
                propertiesObjStart = new ANRBuster<Void, PropertiesObj>() { // from class: com.kidoz.sdk.api.general.database.ConfigurationTable.3
                    @Override // com.kidoz.sdk.api.anr_handler.ANRBuster
                    public void onANRDetected() {
                    }

                    @Override // com.kidoz.sdk.api.anr_handler.ANRBuster
                    public PropertiesObj onStart(Void r12) {
                        PropertiesObj propertiesObj2 = null;
                        try {
                            try {
                                Cursor cursorQuery = ConfigurationTable.this.mDBmanager.handleDatabase(true).query(ConfigurationTable.TABLE_NAME, null, null, null, null, null, null);
                                if (cursorQuery != null && cursorQuery.getCount() > 0) {
                                    JSONObject jSONObject = new JSONObject();
                                    cursorQuery.moveToFirst();
                                    do {
                                        jSONObject.put(cursorQuery.getString(cursorQuery.getColumnIndex(ConfigurationTable.COLUMN_PROPERTY_KEY)), cursorQuery.getString(cursorQuery.getColumnIndex(ConfigurationTable.COLUMN_PROPERTY_VALUE)));
                                    } while (cursorQuery.moveToNext());
                                    cursorQuery.close();
                                    propertiesObj2 = new PropertiesObj(jSONObject);
                                }
                            } catch (Exception e2) {
                                SDKLogger.printErrorLog(ConfigurationTable.this.TAG, "Error when trying to load app properties: " + e2.getMessage());
                            }
                            BaseTable.printDBLog(BaseTable.DBactionType.LOAD, "loadAppProperties", ConfigurationTable.TABLE_NAME, 0);
                            return propertiesObj2;
                        } finally {
                            ConfigurationTable.this.mDBmanager.handleDatabase(false);
                        }
                    }

                    @Override // com.kidoz.sdk.api.anr_handler.ANRBuster
                    public void onSuccess() {
                    }
                }.start();
            }
            propertiesObj = propertiesObjStart;
        }
        return propertiesObj;
    }

    public synchronized JSONObject loadProperties(String str) {
        JSONObject jSONObject;
        DatabaseManager databaseManager;
        jSONObject = null;
        if (this.mDBmanager != null && str != null) {
            synchronized (this.mSyncObject) {
                try {
                    try {
                        Cursor cursorQuery = this.mDBmanager.handleDatabase(true).query(TABLE_NAME, null, "COLUMN_PROPERTY_KEY=?", new String[]{str}, null, null, null);
                        if (cursorQuery != null && cursorQuery.getCount() > 0) {
                            cursorQuery.moveToFirst();
                            JSONObject jSONObject2 = new JSONObject(cursorQuery.getString(cursorQuery.getColumnIndex(COLUMN_PROPERTY_VALUE)));
                            try {
                                cursorQuery.close();
                                jSONObject = jSONObject2;
                            } catch (Exception e2) {
                                e = e2;
                                jSONObject = jSONObject2;
                                SDKLogger.printErrorLog(this.TAG, "Error when trying to load properties: " + e.getMessage());
                                databaseManager = this.mDBmanager;
                            }
                        }
                        databaseManager = this.mDBmanager;
                    } catch (Exception e3) {
                        e = e3;
                    }
                    databaseManager.handleDatabase(false);
                    BaseTable.printDBLog(BaseTable.DBactionType.LOAD, "loadProperties", TABLE_NAME, 0);
                } catch (Throwable th) {
                    this.mDBmanager.handleDatabase(false);
                    throw th;
                }
            }
        }
        return jSONObject;
    }
}
