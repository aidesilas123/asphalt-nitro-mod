package com.kidoz.sdk.api.general.database;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.kidoz.sdk.api.general.database.BaseTable;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import com.kidoz.sdk.api.structure.IsEventRecord;

/* JADX INFO: loaded from: classes4.dex */
public class IsEventTable extends BaseTable {
    private static final String COLUMN_APP_ID = "COLUMN_APP_ID";
    private static final String COLUMN_PARAMS = "COLUMN_PARAMS";
    private static final String TABLE_NAME = "InstallEventTable";
    private final String TAG;

    public IsEventTable(DatabaseManager databaseManager, Object obj) {
        super(databaseManager, obj);
        this.TAG = IsEventTable.class.getName();
    }

    public static synchronized void onCreate(SQLiteDatabase sQLiteDatabase) {
        if (sQLiteDatabase != null) {
            sQLiteDatabase.execSQL("CREATE TABLE InstallEventTable(COLUMN_APP_ID TEXT PRIMARY KEY,COLUMN_PARAMS TEXT)");
        }
    }

    public static synchronized void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.kidoz.sdk.api.general.database.BaseTable$DBactionType] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.String] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public synchronized void deleteRecord(String str) {
        int iDelete;
        DatabaseManager databaseManager;
        if (this.mDBmanager != null) {
            synchronized (this.mSyncObject) {
                if (str == null) {
                    clearTable(TABLE_NAME);
                } else {
                    SQLiteDatabase sQLiteDatabase = 0;
                    SQLiteDatabase sQLiteDatabaseHandleDatabase = null;
                    boolean z = 0;
                    try {
                        try {
                            sQLiteDatabaseHandleDatabase = this.mDBmanager.handleDatabase(true);
                            sQLiteDatabaseHandleDatabase.beginTransaction();
                            iDelete = sQLiteDatabaseHandleDatabase.delete(TABLE_NAME, "COLUMN_APP_ID=?", new String[]{str});
                            if (iDelete == -1) {
                                iDelete = 0;
                            }
                            try {
                                sQLiteDatabaseHandleDatabase.yieldIfContendedSafely();
                                sQLiteDatabaseHandleDatabase.setTransactionSuccessful();
                                sQLiteDatabaseHandleDatabase.endTransaction();
                                databaseManager = this.mDBmanager;
                            } catch (Exception e2) {
                                e = e2;
                                SDKLogger.printErrorLog(this.TAG, "Error when trying to delete sdk record: " + e.getMessage());
                                if (sQLiteDatabaseHandleDatabase != null) {
                                    sQLiteDatabaseHandleDatabase.endTransaction();
                                }
                                databaseManager = this.mDBmanager;
                            }
                        } finally {
                        }
                    } catch (Exception e3) {
                        e = e3;
                        iDelete = 0;
                    }
                    databaseManager.handleDatabase(false);
                    sQLiteDatabase = BaseTable.DBactionType.DELETE;
                    z = "Delete Install App SDK record";
                    BaseTable.printDBLog(sQLiteDatabase, "Delete Install App SDK record", TABLE_NAME, iDelete);
                }
            }
        }
    }

    public synchronized IsEventRecord getRecord(String str) {
        IsEventRecord isEventRecord;
        int count;
        DatabaseManager databaseManager;
        String str2;
        String[] strArr;
        isEventRecord = null;
        if (this.mDBmanager != null) {
            synchronized (this.mSyncObject) {
                try {
                    try {
                        SQLiteDatabase sQLiteDatabaseHandleDatabase = this.mDBmanager.handleDatabase(true);
                        if (str != null) {
                            str2 = "COLUMN_APP_ID=?";
                            strArr = new String[]{str};
                        } else {
                            str2 = null;
                            strArr = null;
                        }
                        Cursor cursorQuery = sQLiteDatabaseHandleDatabase.query(TABLE_NAME, null, str2, strArr, null, null, null);
                        if (cursorQuery == null || cursorQuery.getCount() <= 0) {
                            count = 0;
                        } else {
                            count = cursorQuery.getCount();
                            try {
                                cursorQuery.moveToFirst();
                                isEventRecord = new IsEventRecord(cursorQuery.getString(cursorQuery.getColumnIndex(COLUMN_PARAMS)));
                            } catch (Exception e2) {
                                e = e2;
                                SDKLogger.printErrorLog(this.TAG, "Error when trying to load install record: " + e.getMessage());
                                databaseManager = this.mDBmanager;
                            }
                        }
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        databaseManager = this.mDBmanager;
                    } catch (Exception e3) {
                        e = e3;
                        count = 0;
                    }
                    databaseManager.handleDatabase(false);
                    BaseTable.printDBLog(BaseTable.DBactionType.LOAD, "load sdk record", TABLE_NAME, count);
                } catch (Throwable th) {
                    this.mDBmanager.handleDatabase(false);
                    throw th;
                }
            }
        }
        return isEventRecord;
    }

    public synchronized void insertRecord(IsEventRecord isEventRecord) {
    }
}
