package com.kidoz.sdk.api.general.database;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.kidoz.sdk.api.general.utils.ConstantDef;
import com.kidoz.sdk.api.general.utils.SDKLogger;

/* JADX INFO: loaded from: classes4.dex */
public class BaseTable {
    private final String TAG = BaseTable.class.getSimpleName();
    protected DatabaseManager mDBmanager;
    protected final Object mSyncObject;

    /* JADX INFO: renamed from: com.kidoz.sdk.api.general.database.BaseTable$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$kidoz$sdk$api$general$database$BaseTable$DBactionType;

        static {
            int[] iArr = new int[DBactionType.values().length];
            $SwitchMap$com$kidoz$sdk$api$general$database$BaseTable$DBactionType = iArr;
            try {
                iArr[DBactionType.INSERT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$database$BaseTable$DBactionType[DBactionType.UPDATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$database$BaseTable$DBactionType[DBactionType.DELETE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$database$BaseTable$DBactionType[DBactionType.LOAD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum DBactionType {
        INSERT,
        UPDATE,
        DELETE,
        LOAD
    }

    public BaseTable(DatabaseManager databaseManager, Object obj) {
        this.mDBmanager = databaseManager;
        this.mSyncObject = obj;
    }

    public static void printDBLog(DBactionType dBactionType, String str, String str2, int i) {
        String str3;
        if (ConstantDef.DGM) {
            int i2 = AnonymousClass1.$SwitchMap$com$kidoz$sdk$api$general$database$BaseTable$DBactionType[dBactionType.ordinal()];
            if (i2 == 1) {
                str3 = "KD (" + str + ")  : Inserted [" + i + "] items into " + str2 + "DB Table";
            } else if (i2 == 2) {
                str3 = "KD (" + str + ") :  Updated [" + i + "] items at " + str2 + "DB Table";
            } else if (i2 == 3) {
                str3 = "KD (" + str + ") :  Deleted [" + i + "] items from " + str2 + "DB Table";
            } else if (i2 != 4) {
                str3 = "";
            } else {
                str3 = "KD (" + str + ") :  Loaded [" + i + "] items from " + str2 + "DB Table";
            }
            SDKLogger.printInfoLog("Kidoz DataBase Print Log", str3);
        }
    }

    public void clearTable(String str) {
        if (this.mDBmanager != null) {
            synchronized (this.mSyncObject) {
                int iDelete = this.mDBmanager.handleDatabase(true).delete(str, null, null);
                if (iDelete == -1) {
                    iDelete = 0;
                }
                printDBLog(DBactionType.DELETE, "clearTable", str, iDelete);
                this.mDBmanager.handleDatabase(false);
            }
        }
    }

    public void printTable(String str) {
        if (this.mDBmanager != null) {
            synchronized (this.mSyncObject) {
                SQLiteDatabase sQLiteDatabaseHandleDatabase = this.mDBmanager.handleDatabase(true);
                try {
                    StringBuilder sb = new StringBuilder();
                    sQLiteDatabaseHandleDatabase.beginTransaction();
                    Cursor cursorQuery = sQLiteDatabaseHandleDatabase.query(str, null, null, null, null, null, null);
                    if (cursorQuery != null) {
                        String[] columnNames = cursorQuery.getColumnNames();
                        for (String str2 : columnNames) {
                            sb.append(str2);
                            sb.append("\t");
                        }
                        sb.append("\n");
                        if (cursorQuery.getCount() > 0) {
                            cursorQuery.moveToFirst();
                            do {
                                for (String str3 : columnNames) {
                                    sb.append(cursorQuery.getString(cursorQuery.getColumnIndex(str3)));
                                    sb.append("\t");
                                }
                                sb.append("\n");
                            } while (cursorQuery.moveToNext());
                        }
                        cursorQuery.close();
                    }
                    SDKLogger.printDebugLog(this.TAG, ">>>>Print Table = " + str + "\n" + sb.toString());
                    sQLiteDatabaseHandleDatabase.setTransactionSuccessful();
                } finally {
                    sQLiteDatabaseHandleDatabase.endTransaction();
                    this.mDBmanager.handleDatabase(false);
                }
            }
        }
    }
}
