package com.kidoz.sdk.api.general.database;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* JADX INFO: loaded from: classes4.dex */
public class DatabaseManager extends SQLiteOpenHelper {
    public static final String DATABASE_NAME = "KIDOZ_SDK_DATATBASE_1";
    private static final int DATABASE_VERSION = 1;
    private static final String TAG = DatabaseManager.class.getSimpleName();
    private static DatabaseManager mDatabaseManager;
    private ConfigurationTable mConfigurationTable;
    private SQLiteDatabase mDatabase;
    private IsEventTable mIsEventTable;
    private int mOpenCounter;
    protected final Object mSyncObject;

    public DatabaseManager(Context context) {
        super(context, DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 1);
        this.mSyncObject = new Object();
        initDatabase();
    }

    public static DatabaseManager getInstance(Context context) {
        if (mDatabaseManager == null) {
            mDatabaseManager = new DatabaseManager(context);
        }
        return mDatabaseManager;
    }

    private void initDatabase() {
        this.mIsEventTable = new IsEventTable(this, this.mSyncObject);
        this.mConfigurationTable = new ConfigurationTable(this, this.mSyncObject);
    }

    public ConfigurationTable getConfigTable() {
        return this.mConfigurationTable;
    }

    public IsEventTable getIsEventTable() {
        return this.mIsEventTable;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005c A[Catch: all -> 0x0060, TRY_LEAVE, TryCatch #0 {, blocks: (B:5:0x0004, B:7:0x000b, B:22:0x005c, B:10:0x0013, B:11:0x002e, B:13:0x0032, B:14:0x0035, B:16:0x0039, B:18:0x003d, B:21:0x0042), top: B:28:0x0002, inners: #1, #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized android.database.sqlite.SQLiteDatabase handleDatabase(boolean r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            r0 = 1
            if (r4 == 0) goto L2e
            int r4 = r3.mOpenCounter     // Catch: java.lang.Throwable -> L60
            int r4 = r4 + r0
            r3.mOpenCounter = r4     // Catch: java.lang.Throwable -> L60
            if (r4 != r0) goto L5c
            android.database.sqlite.SQLiteDatabase r4 = r3.getWritableDatabase()     // Catch: java.lang.Exception -> L12 java.lang.Throwable -> L60
            r3.mDatabase = r4     // Catch: java.lang.Exception -> L12 java.lang.Throwable -> L60
            goto L5c
        L12:
            r4 = move-exception
            java.lang.String r0 = com.kidoz.sdk.api.general.database.DatabaseManager.TAG     // Catch: java.lang.Throwable -> L60
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L60
            r1.<init>()     // Catch: java.lang.Throwable -> L60
            java.lang.String r2 = "Error when trying to open database: "
            r1.append(r2)     // Catch: java.lang.Throwable -> L60
            java.lang.String r4 = r4.getMessage()     // Catch: java.lang.Throwable -> L60
            r1.append(r4)     // Catch: java.lang.Throwable -> L60
            java.lang.String r4 = r1.toString()     // Catch: java.lang.Throwable -> L60
            com.kidoz.sdk.api.general.utils.SDKLogger.printErrorLog(r0, r4)     // Catch: java.lang.Throwable -> L60
            goto L5c
        L2e:
            int r4 = r3.mOpenCounter     // Catch: java.lang.Throwable -> L60
            if (r4 <= 0) goto L35
            int r4 = r4 - r0
            r3.mOpenCounter = r4     // Catch: java.lang.Throwable -> L60
        L35:
            int r4 = r3.mOpenCounter     // Catch: java.lang.Throwable -> L60
            if (r4 != 0) goto L5c
            android.database.sqlite.SQLiteDatabase r4 = r3.mDatabase     // Catch: java.lang.Exception -> L41 java.lang.Throwable -> L60
            if (r4 == 0) goto L5c
            r4.close()     // Catch: java.lang.Exception -> L41 java.lang.Throwable -> L60
            goto L5c
        L41:
            r4 = move-exception
            java.lang.String r0 = com.kidoz.sdk.api.general.database.DatabaseManager.TAG     // Catch: java.lang.Throwable -> L60
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L60
            r1.<init>()     // Catch: java.lang.Throwable -> L60
            java.lang.String r2 = "Error when trying to close database: "
            r1.append(r2)     // Catch: java.lang.Throwable -> L60
            java.lang.String r4 = r4.getMessage()     // Catch: java.lang.Throwable -> L60
            r1.append(r4)     // Catch: java.lang.Throwable -> L60
            java.lang.String r4 = r1.toString()     // Catch: java.lang.Throwable -> L60
            com.kidoz.sdk.api.general.utils.SDKLogger.printErrorLog(r0, r4)     // Catch: java.lang.Throwable -> L60
        L5c:
            android.database.sqlite.SQLiteDatabase r4 = r3.mDatabase     // Catch: java.lang.Throwable -> L60
            monitor-exit(r3)
            return r4
        L60:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kidoz.sdk.api.general.database.DatabaseManager.handleDatabase(boolean):android.database.sqlite.SQLiteDatabase");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        IsEventTable.onCreate(sQLiteDatabase);
        ConfigurationTable.onCreate(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        IsEventTable.onUpgrade(sQLiteDatabase, i, i2);
        ConfigurationTable.onUpgrade(sQLiteDatabase, i, i2);
    }
}
