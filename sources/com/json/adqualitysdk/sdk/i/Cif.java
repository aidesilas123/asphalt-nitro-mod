package com.json.adqualitysdk.sdk.i;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.graphics.Color;
import android.graphics.PointF;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.if, reason: invalid class name */
/* JADX INFO: loaded from: classes4.dex */
public final class Cif {
    private static final String[] a;
    private static char[] b = null;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f5767d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f5768e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5769f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5770g = 1;
    private SQLiteDatabase h;
    private a i;

    /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.if$a */
    class a extends SQLiteOpenHelper {
        private static int a = 134;
        private static int b = 0;
        private static int c = 1;

        public a(Context context, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
        }

        private static String a(int i, boolean z, int i2, int i3, String str) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (c.f35) {
                char[] cArr2 = new char[i3];
                c.f36 = 0;
                while (true) {
                    int i4 = c.f36;
                    if (i4 >= i3) {
                        break;
                    }
                    c.f37 = cArr[i4];
                    cArr2[c.f36] = (char) (c.f37 + i);
                    int i5 = c.f36;
                    cArr2[i5] = (char) (cArr2[i5] - a);
                    c.f36 = i5 + 1;
                }
                if (i2 > 0) {
                    c.f38 = i2;
                    char[] cArr3 = new char[i3];
                    System.arraycopy(cArr2, 0, cArr3, 0, i3);
                    int i6 = c.f38;
                    System.arraycopy(cArr3, 0, cArr2, i3 - i6, i6);
                    int i7 = c.f38;
                    System.arraycopy(cArr3, i7, cArr2, 0, i3 - i7);
                }
                if (z) {
                    char[] cArr4 = new char[i3];
                    c.f36 = 0;
                    while (true) {
                        int i8 = c.f36;
                        if (i8 >= i3) {
                            break;
                        }
                        cArr4[i8] = cArr2[(i3 - i8) - 1];
                        c.f36 = i8 + 1;
                    }
                    cArr2 = cArr4;
                }
                str2 = new String(cArr2);
            }
            return str2;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onCreate(SQLiteDatabase sQLiteDatabase) {
            int i = b + 15;
            c = i % 128;
            int i2 = i % 2;
            if ((!sQLiteDatabase.isReadOnly() ? '(' : '1') == '(') {
                sQLiteDatabase.execSQL(a(222 - KeyEvent.keyCodeFromString(""), true, (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) + 8, ExpandableListView.getPackedPositionChild(0L) + 22, "\u0017\u000e\uffc8￩\ufff5\uffef￩\ufffa\ufff8\ufff6\ufff7￥!\r\u0013\u0007\u0016\u000f\u0011\r\u001a").intern());
            }
            sQLiteDatabase.execSQL(a(Color.green(0) + 209, false, (ViewConfiguration.getKeyRepeatDelay() >> 16) + 55, 67 - KeyEvent.keyCodeFromString(""), "ￕ\ufffe\ufffbￕ\u0003\u0004\tￕ\ufffa\r\ufffe\b\t\bￕ +\u0014()$'\u001a\uffdd \u001a.ￕ\t\ufffa\r\tￕ\u0005\u0007\ufffe\u0002\ufff6\u0007\u000eￕ\u0000\ufffa\u000e￡ￕ+\u0016!ￕ\t\ufffa\r\t\uffde\ufff8\u0007\ufffa\ufff6\t\ufffaￕ\t\ufff6\ufff7\u0001\ufffa").intern());
            int i3 = c + 5;
            b = i3 % 128;
            if ((i3 % 2 != 0 ? (char) 16 : '/') != 16) {
            } else {
                throw null;
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            int i3 = b + 45;
            c = i3 % 128;
            if (i3 % 2 == 0) {
                throw null;
            }
        }
    }

    static {
        a();
        a = new String[]{b(null, null, 128 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)), "\u008b\u008a\u0084").intern(), b(null, null, TextUtils.getTrimmedLength("") + 127, "\u0083\u0082\u0081").intern()};
        int i = f5769f + 13;
        f5770g = i % 128;
        int i2 = i % 2;
    }

    public Cif(Context context, String str) {
        a aVar = new a(context, str);
        this.i = aVar;
        this.h = aVar.getWritableDatabase();
    }

    static void a() {
        f5767d = true;
        f5768e = true;
        c = 111;
        b = new char[]{229, 208, 219, 218, 206, 226, 227, 222, 225, 212, 232, 172, 150, 174, 143, 187, 184, 186, 180, 194, 178, 195, 190, 196, 189, 151, 152, 213, 220, 198, 183, 193};
    }

    private static String b(int[] iArr, String str, int i, String str2) throws UnsupportedEncodingException {
        Object bytes = str2;
        if (str2 != null) {
            bytes = str2.getBytes("ISO-8859-1");
        }
        byte[] bArr = (byte[]) bytes;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (k.f131) {
            char[] cArr2 = b;
            int i2 = c;
            if (f5768e) {
                int length = bArr.length;
                k.f129 = length;
                char[] cArr3 = new char[length];
                k.f130 = 0;
                while (k.f130 < k.f129) {
                    int i3 = k.f130;
                    int i4 = k.f129 - 1;
                    int i5 = k.f130;
                    cArr3[i3] = (char) (cArr2[bArr[i4 - i5] + i] - i2);
                    k.f130 = i5 + 1;
                }
                return new String(cArr3);
            }
            if (f5767d) {
                int length2 = cArr.length;
                k.f129 = length2;
                char[] cArr4 = new char[length2];
                k.f130 = 0;
                while (k.f130 < k.f129) {
                    int i6 = k.f130;
                    int i7 = k.f129 - 1;
                    int i8 = k.f130;
                    cArr4[i6] = (char) (cArr2[cArr[i7 - i8] - i] - i2);
                    k.f130 = i8 + 1;
                }
                return new String(cArr4);
            }
            int length3 = iArr.length;
            k.f129 = length3;
            char[] cArr5 = new char[length3];
            k.f130 = 0;
            while (k.f130 < k.f129) {
                int i9 = k.f130;
                int i10 = k.f129 - 1;
                int i11 = k.f130;
                cArr5[i9] = (char) (cArr2[iArr[i10 - i11] - i] - i2);
                k.f130 = i11 + 1;
            }
            return new String(cArr5);
        }
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final synchronized int m836(String str) {
        Cursor cursor = null;
        try {
            String strReplace = str.replace('*', '%');
            SQLiteDatabase sQLiteDatabase = this.h;
            StringBuilder sb = new StringBuilder();
            sb.append(b(null, null, 127 - View.MeasureSpec.makeMeasureSpec(0, 0), "\u008d\u008f\u0093\u0092\u0091\u0090\u008f\u008b\u008a\u0084\u008f\u0093 \u0093\u009f\u009e\u008f\u008a\u0089\u0088\u0087\u0086\u0085\u0081\u0084\u008f\u009d\u0088\u0089\u009c\u008f\u009b\u0083\u0082\u0081\u009a\u0096\u0099\u0098\u0097\u0095\u008f\u0096\u0095\u0093\u0090\u0093\u0094").intern());
            sb.append(strReplace);
            sb.append(b(null, null, (ViewConfiguration.getFadingEdgeLength() >> 16) + 127, "\u008d").intern());
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery(sb.toString(), null);
            if (cursorRawQuery != null) {
                int i = f5769f + 55;
                f5770g = i % 128;
                try {
                    if ((i % 2 == 0 ? '\b' : '_') == '\b') {
                        cursorRawQuery.moveToFirst();
                        throw null;
                    }
                    if (cursorRawQuery.moveToFirst()) {
                        int i2 = cursorRawQuery.getInt(0);
                        cursorRawQuery.close();
                        return i2;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorRawQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursorRawQuery != null) {
                int i3 = f5769f + 91;
                f5770g = i3 % 128;
                int i4 = i3 % 2;
                cursorRawQuery.close();
            }
            return 0;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final synchronized void m837(String str) {
        int i = f5769f + 45;
        f5770g = i % 128;
        int i2 = i % 2;
        this.h.delete(b(null, null, 127 - Color.red(0), "\u008a\u0089\u0088\u0087\u0086\u0085\u0081\u0084").intern(), b(null, null, (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) + 126, "\u008e\u008c\u008b\u008a\u0084").intern(), new String[]{str});
        int i3 = f5770g + 97;
        f5769f = i3 % 128;
        if ((i3 % 2 != 0 ? '<' : 'c') != 'c') {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final synchronized String m838(String str) {
        Throwable th;
        Cursor cursorQuery;
        try {
            SQLiteDatabase sQLiteDatabase = this.h;
            String strIntern = b(null, null, 127 - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), "\u008a\u0089\u0088\u0087\u0086\u0085\u0081\u0084").intern();
            String[] strArr = a;
            StringBuilder sb = new StringBuilder();
            sb.append(b(null, null, (-16777089) - Color.rgb(0, 0, 0), "\u008d\u008c\u008b\u008a\u0084").intern());
            sb.append(str);
            sb.append(b(null, null, Process.getGidForName("") + 128, "\u008d").intern());
            cursorQuery = sQLiteDatabase.query(strIntern, strArr, sb.toString(), null, null, null, null);
            if (cursorQuery != null) {
                int i = f5769f + 37;
                f5770g = i % 128;
                try {
                    if ((i % 2 == 0 ? (char) 31 : (char) 19) == 31) {
                        cursorQuery.moveToNext();
                        throw null;
                    }
                    if ((cursorQuery.moveToNext() ? 'W' : 'L') == 'W') {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow(b(null, null, 127 - (ViewConfiguration.getTouchSlop() >> 8), "\u0083\u0082\u0081").intern()));
                        cursorQuery.close();
                        int i2 = f5769f + 87;
                        f5770g = i2 % 128;
                        int i3 = i2 % 2;
                        return string;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cursorQuery != null) {
                        cursorQuery.close();
                        int i4 = f5770g + 25;
                        f5769f = i4 % 128;
                        int i5 = i4 % 2;
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
            cursorQuery = null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized HashMap<String, String> m839(String str, int i) {
        String str2;
        HashMap<String, String> map;
        Cursor cursor = null;
        try {
            String strReplace = str.replace('*', '%');
            SQLiteDatabase sQLiteDatabase = this.h;
            String strIntern = b(null, null, (ViewConfiguration.getKeyRepeatTimeout() >> 16) + 127, "\u008a\u0089\u0088\u0087\u0086\u0085\u0081\u0084").intern();
            String[] strArr = a;
            StringBuilder sb = new StringBuilder();
            sb.append(b(null, null, 128 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), "\u008d\u008f\u0093\u0092\u0091\u0090\u008f\u008b\u008a\u0084").intern());
            sb.append(strReplace);
            sb.append(b(null, null, TextUtils.indexOf("", "", 0, 0) + 127, "\u008d").intern());
            String string = sb.toString();
            if (i <= 0) {
                str2 = null;
            } else {
                String string2 = Integer.toString(i);
                int i2 = f5769f + 57;
                f5770g = i2 % 128;
                if (i2 % 2 == 0) {
                }
                str2 = string2;
            }
            Cursor cursorQuery = sQLiteDatabase.query(strIntern, strArr, string, null, null, null, null, str2);
            try {
                map = new HashMap<>();
                int i3 = f5769f + 45;
                f5770g = i3 % 128;
                int i4 = i3 % 2;
                while (cursorQuery != null) {
                    int i5 = f5769f + 25;
                    f5770g = i5 % 128;
                    int i6 = i5 % 2;
                    if (!(cursorQuery.moveToNext())) {
                        break;
                    }
                    try {
                        map.put(cursorQuery.getString(cursorQuery.getColumnIndexOrThrow(b(null, null, 127 - View.combineMeasuredStates(0, 0), "\u008b\u008a\u0084").intern())), cursorQuery.getString(cursorQuery.getColumnIndexOrThrow(b(null, null, MotionEvent.axisFromString("") + 128, "\u0083\u0082\u0081").intern())));
                    } catch (IllegalArgumentException unused) {
                    }
                }
                if (cursorQuery != null) {
                    int i7 = f5770g + 21;
                    f5769f = i7 % 128;
                    if (i7 % 2 != 0) {
                        cursorQuery.close();
                        throw null;
                    }
                    cursorQuery.close();
                }
            } catch (Throwable th) {
                th = th;
                cursor = cursorQuery;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        return map;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m840(String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(b(null, null, 126 - TextUtils.indexOf((CharSequence) "", '0', 0), "\u0083\u0082\u0081").intern(), str2);
        SQLiteDatabase sQLiteDatabase = this.h;
        String strIntern = b(null, null, Gravity.getAbsoluteGravity(0, 0) + 127, "\u008a\u0089\u0088\u0087\u0086\u0085\u0081\u0084").intern();
        StringBuilder sb = new StringBuilder();
        sb.append(b(null, null, KeyEvent.getDeadChar(0, 0) + 127, "\u008d\u008c\u008b\u008a\u0084").intern());
        sb.append(str);
        sb.append(b(null, null, MotionEvent.axisFromString("") + 128, "\u008d").intern());
        if (sQLiteDatabase.update(strIntern, contentValues, sb.toString(), null) == 0) {
            int i = f5769f + 19;
            f5770g = i % 128;
            int i2 = i % 2;
            contentValues.put(b(null, null, 127 - (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)), "\u008b\u008a\u0084").intern(), str);
            this.h.replace(b(null, null, 127 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24), "\u008a\u0089\u0088\u0087\u0086\u0085\u0081\u0084").intern(), null, contentValues);
            int i3 = f5769f + 31;
            f5770g = i3 % 128;
            int i4 = i3 % 2;
        }
    }
}
