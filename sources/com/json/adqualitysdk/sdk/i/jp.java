package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.ImageFormat;
import android.graphics.drawable.Drawable;
import android.media.AudioTrack;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import android.widget.VideoView;
import com.applovin.exoplayer2.common.base.Ascii;
import com.json.adqualitysdk.sdk.i.gx;
import com.json.adqualitysdk.sdk.i.gz;
import com.json.adqualitysdk.sdk.i.ha;
import com.json.adqualitysdk.sdk.i.hb;
import com.json.adqualitysdk.sdk.i.hc;
import com.json.adqualitysdk.sdk.i.he;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class jp {
    private static Class a = null;
    private static Object b = null;
    private static Field c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Field f5932d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Field f5933e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Field f5934f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5935g = 1561282791;
    private static int h = 125;
    private static int i = -574100318;
    private static short[] k = null;
    private static int o = 0;
    private static int p = 1;
    private static byte[] j = {94, -95, -122, 117, -81, 92, -92, 81, -81, -74, 116, -86, -87, 84, -89, -80, -117, Ascii.NAK, -80, 94, 81, -22, 104, 89, 88, 95, -84, 84, -81, -100, 104, 100, -108, -78, 66, -102, 105, -111, 100, -102, -125, 65, -97, -100, 97, -110, -123, -66, 32, -123, 107, 100, -33, 93, 108, 109, 106, -103, 97, -102, -70, 77, -75, 85, -71, -67, -99, 109, -73, 70, Ascii.SI, 46, Ascii.NAK, -5, Ascii.NAK, Ascii.SUB, -65, 71, -28, Ascii.ETB, -17, Ascii.SUB, -28, -3, 63, -31, -30, Ascii.US, -20, -5, -34, 80, Ascii.DLE, -20, Ascii.FS, -23, -26, Ascii.ETB, -82, 71, -22, Ascii.DC4, -23, -60, Ascii.CR, -9, 9, -15, 1, 10, Ascii.GS, -28, 5, -18, 6, Ascii.ESC, -26, Ascii.US, -30, Ascii.EM, -8, Ascii.FF, -31, 8, -5, -20, 17, -21, Ascii.FF, -12, -49, 53, -53, 51, -61, -56, -33, Ascii.US, -53, 58, -25, 42, 58, -57, 61, -38, Ascii.GS, -35, 40, -64, -64, 55, 62, -55, 49, -112, 112, -57, -117, 108, -63, 63, -62, -49, 35, -39, 39, -33, 47, 36, 51, -16, -47, 40, -37, 33, -41, -46, 45, -48, 2, -5, 49, -52, -53, 49, -49, 55, -57, -52, -37, Ascii.CAN, 57, -64, 51, -55, 63, 58, -59, 56, -22, 36, 62, -61, 57, -34, Ascii.EM, -39, 44, -60, -60, 51, 58, -51, 53, -108, 116, -61, -113, 104, -59, 59, -58, -53, -95, 91, -91, 93, -83, -90, -79, 68, 83, 95, -67, 93, -89, 95, -114, 78, -77, 78, 112, -118, 116, -116, 124, 119, 96, -107, -126, -114, 108, -116, 118, -114, 95, -110, -123, 120, -126, 101, -94, 98, -105, Ascii.DEL, Ascii.DEL, -120, -127, 118, -114, 47, -49, 120, 52, -45, 126, -128, 125, 112, -51, 55, -55, 49, -63, -54, -35, 39, 49, -49, 57, 60, -61, 62, -20, Ascii.CAN, -58, -64, -46, 37, -33, 34, -23, Ascii.CAN, -59, 55, -19, Ascii.ETB, -23, 17, -31, -22, -3, 63, -46, 45, -42, 9, -56, -43, -39, 59, -33, 35, -44, Ascii.VT, -6, 37, -44, 109, -104, 47, 99, -124, 41, -41, 42, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    private static long l = 2463246263406120936L;
    private static int m = 0;
    private static char n = 0;

    private static Object a(View view) {
        try {
            synchronized (jt.class) {
                if (f5932d == null) {
                    f5932d = d(View.class, c((-112) - (KeyEvent.getMaxKeyCode() >> 16), 574100427 - View.resolveSizeAndState(0, 0, 0), (byte) (KeyEvent.normalizeMetaState(0) - 32), (short) Drawable.resolveOpacity(0, 0), (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) - 1561282490).intern());
                }
            }
            return f5932d.get(view);
        } catch (Exception unused) {
            return null;
        }
    }

    private static String b(String str, String str2, int i2, char c2, String str3) {
        String str4;
        Object charArray = str3;
        if (str3 != null) {
            charArray = str3.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        Object charArray2 = str2;
        if (str2 != null) {
            charArray2 = str2.toCharArray();
        }
        char[] cArr2 = (char[]) charArray2;
        Object charArray3 = str;
        if (str != null) {
            charArray3 = str.toCharArray();
        }
        char[] cArr3 = (char[]) charArray3;
        synchronized (j.f124) {
            char[] cArr4 = (char[]) cArr3.clone();
            char[] cArr5 = (char[]) cArr2.clone();
            cArr4[0] = (char) (c2 ^ cArr4[0]);
            cArr5[2] = (char) (cArr5[2] + ((char) i2));
            int length = cArr.length;
            char[] cArr6 = new char[length];
            j.f125 = 0;
            while (true) {
                int i3 = j.f125;
                if (i3 < length) {
                    int i4 = (i3 + 2) % 4;
                    int i5 = (i3 + 3) % 4;
                    char c3 = (char) (((cArr4[i3 % 4] * 32718) + cArr5[i4]) % 65535);
                    j.f126 = c3;
                    cArr5[i5] = (char) (((cArr4[i5] * 32718) + cArr5[i4]) / 65535);
                    cArr4[i5] = c3;
                    int i6 = j.f125;
                    cArr6[i6] = (char) (((((long) (cArr[i6] ^ cArr4[i5])) ^ l) ^ ((long) m)) ^ ((long) n));
                    j.f125 = i6 + 1;
                } else {
                    str4 = new String(cArr6);
                }
            }
        }
        return str4;
    }

    private static String c(int i2, int i3, byte b2, short s, int i4) {
        String string;
        synchronized (n.f132) {
            StringBuilder sb = new StringBuilder();
            int i5 = h;
            int i6 = i2 + i5;
            boolean z = i6 == -1;
            if (z) {
                byte[] bArr = j;
                i6 = bArr != null ? (byte) (bArr[f5935g + i4] + i5) : (short) (k[f5935g + i4] + i5);
            }
            if (i6 > 0) {
                n.f136 = ((i4 + i6) - 2) + f5935g + (z ? 1 : 0);
                n.f135 = b2;
                char c2 = (char) (i3 + i);
                n.f133 = c2;
                sb.append(c2);
                n.f134 = n.f133;
                n.f137 = 1;
                while (n.f137 < i6) {
                    byte[] bArr2 = j;
                    if (bArr2 != null) {
                        int i7 = n.f136;
                        n.f136 = i7 - 1;
                        n.f133 = (char) (n.f134 + (((byte) (bArr2[i7] + s)) ^ n.f135));
                    } else {
                        short[] sArr = k;
                        int i8 = n.f136;
                        n.f136 = i8 - 1;
                        n.f133 = (char) (n.f134 + (((short) (sArr[i8] + s)) ^ n.f135));
                    }
                    sb.append(n.f133);
                    n.f134 = n.f133;
                    n.f137++;
                }
            }
            string = sb.toString();
        }
        return string;
    }

    private static Field d(Class cls, String str) {
        int i2 = p + 15;
        o = i2 % 128;
        int i3 = i2 % 2;
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            int i4 = p + 57;
            o = i4 % 128;
            int i5 = i4 % 2;
            return declaredField;
        } catch (Exception e2) {
            jy.m987(b("ݯ\uf4f1䲿\ueb71", "俨ﲡ㕬∯", ViewConfiguration.getScrollBarFadeDuration() >> 16, (char) (TextUtils.indexOf((CharSequence) "", '0') + 1), "\u0add흄\ue334䏔팷\uf377꒧䖩㏲᪺⓲⦐").intern(), c((-16777316) - Color.rgb(0, 0, 0), 574100419 - (ViewConfiguration.getJumpTapTimeout() >> 16), (byte) ((ViewConfiguration.getScrollDefaultDelay() >> 16) + 42), (short) View.MeasureSpec.getMode(0), (-1561282477) - ((Process.getThreadPriority(0) + 20) >> 6)).intern(), (Throwable) e2, false);
            return null;
        }
    }

    private static List<View> e(Class cls, Object obj) throws Exception {
        if (c == null) {
            int i2 = p + 83;
            o = i2 % 128;
            int i3 = i2 % 2;
            Field declaredField = cls.getDeclaredField(b("㿩躤\ue975쮀", "俨ﲡ㕬∯", 1 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)), (char) (33001 - (ViewConfiguration.getPressedStateDuration() >> 16)), "ू齸\uf48f堣妃롧").intern());
            c = declaredField;
            declaredField.setAccessible(true);
        }
        Object obj2 = c.get(obj);
        if ((obj2 instanceof List ? (char) 2 : (char) 22) == 2) {
            int i4 = o + 33;
            p = i4 % 128;
            int i5 = i4 % 2;
            return (List) c.get(obj);
        }
        if ((obj2 instanceof View[] ? '!' : 'U') == 'U') {
            ArrayList arrayList = new ArrayList();
            int i6 = o + 65;
            p = i6 % 128;
            int i7 = i6 % 2;
            return arrayList;
        }
        int i8 = p + 73;
        o = i8 % 128;
        if ((i8 % 2 != 0 ? 'J' : (char) 19) != 19) {
            Arrays.asList((View[]) c.get(obj));
            throw null;
        }
        List<View> listAsList = Arrays.asList((View[]) c.get(obj));
        int i9 = p + 119;
        o = i9 % 128;
        if (i9 % 2 == 0) {
            return listAsList;
        }
        int i10 = 81 / 0;
        return listAsList;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static void m932(MediaPlayer mediaPlayer, gz.e eVar) {
        int i2 = o + 49;
        p = i2 % 128;
        int i3 = i2 % 2;
        try {
            Field fieldD = d(MediaPlayer.class, b("哰졌鲣㧯", "俨ﲡ㕬∯", (-1547154348) - (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)), (char) (Color.red(0) + 61340), "ிⶴ\udc68級飵죠깄潐꛲ழ꯴荁⻖\u05c9쟪").intern());
            MediaPlayer.OnInfoListener onInfoListener = (MediaPlayer.OnInfoListener) fieldD.get(mediaPlayer);
            if (!(onInfoListener instanceof gz)) {
                fieldD.set(mediaPlayer, new gz(onInfoListener, eVar));
            }
            int i4 = o + 9;
            p = i4 % 128;
            int i5 = i4 % 2;
        } catch (Exception e2) {
            jy.m987(b("ݯ\uf4f1䲿\ueb71", "俨ﲡ㕬∯", ViewConfiguration.getKeyRepeatTimeout() >> 16, (char) View.MeasureSpec.getMode(0), "\u0add흄\ue334䏔팷\uf377꒧䖩㏲᪺⓲⦐").intern(), c((-90) - Color.green(0), Drawable.resolveOpacity(0, 0) + 574100419, (byte) (Drawable.resolveOpacity(0, 0) - 62), (short) ExpandableListView.getPackedPositionGroup(0L), (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) - 1561282662).intern(), (Throwable) e2, false);
        }
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static void m933(MediaPlayer mediaPlayer, he.a aVar) {
        int i2 = o + 19;
        p = i2 % 128;
        int i3 = i2 % 2;
        try {
            Field fieldD = d(MediaPlayer.class, c((-102) - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), TextUtils.getOffsetBefore("", 0) + 574100427, (byte) ((-64) - View.resolveSize(0, 0)), (short) (1 - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1))), (-1561282511) - (ViewConfiguration.getTouchSlop() >> 8)).intern());
            MediaPlayer.OnSeekCompleteListener onSeekCompleteListener = (MediaPlayer.OnSeekCompleteListener) fieldD.get(mediaPlayer);
            if (!(onSeekCompleteListener instanceof he)) {
                fieldD.set(mediaPlayer, new he(onSeekCompleteListener, aVar));
            }
            int i4 = p + 29;
            o = i4 % 128;
            int i5 = i4 % 2;
        } catch (Exception e2) {
            jy.m987(b("ݯ\uf4f1䲿\ueb71", "俨ﲡ㕬∯", TextUtils.lastIndexOf("", '0', 0) + 1, (char) ('0' - AndroidCharacter.getMirror('0')), "\u0add흄\ue334䏔팷\uf377꒧䖩㏲᪺⓲⦐").intern(), b("ᳬ鷾퍺㬃", "俨ﲡ㕬∯", (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) - 1, (char) (ViewConfiguration.getKeyRepeatDelay() >> 16), "퉉\udf20斪苜∛榻岀✏㢉䙬ጭ㗋࢙ᴎ鉟ꆙ血煑澜ࣣ龰\ue3bf'Ξ驨䧍傝ִ⌐꣼暱州\uab1c謅⦤⮺쫽續").intern(), (Throwable) e2, false);
        }
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static void m934(View view, hb.a aVar) {
        int i2 = o + 103;
        p = i2 % 128;
        int i3 = i2 % 2;
        View.OnClickListener onClickListenerM938 = m938(view);
        if (onClickListenerM938 instanceof hb) {
            return;
        }
        view.setOnClickListener(new hb(onClickListenerM938, aVar));
        int i4 = p + 95;
        o = i4 % 128;
        int i5 = i4 % 2;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static void m935(View view, hc.c cVar) {
        int i2 = p + 63;
        o = i2 % 128;
        if ((i2 % 2 != 0 ? '_' : 'N') == '_') {
            boolean z = m936(view) instanceof hc;
            throw null;
        }
        View.OnTouchListener onTouchListenerM936 = m936(view);
        if (onTouchListenerM936 instanceof hc) {
            return;
        }
        view.setOnTouchListener(new hc(onTouchListenerM936, cVar));
        int i3 = p + 81;
        o = i3 % 128;
        int i4 = i3 % 2;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static View.OnTouchListener m936(View view) {
        try {
            Class<?> cls = View.class;
            Object obj = view;
            if (Build.VERSION.SDK_INT > 14) {
                Object objA = a(view);
                if (objA == null) {
                    return null;
                }
                cls = objA.getClass();
                obj = objA;
            }
            synchronized (jt.class) {
                if (f5934f == null) {
                    f5934f = d(cls, c((-109) - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 574100428, (byte) Color.red(0), (short) ((ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 1), Color.rgb(0, 0, 0) - 1544505471).intern());
                }
            }
            return (View.OnTouchListener) f5934f.get(obj);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static void m937(MediaPlayer mediaPlayer, ha.c cVar) {
        int i2 = p + 3;
        o = i2 % 128;
        int i3 = i2 % 2;
        try {
            Field fieldD = d(MediaPlayer.class, c((-104) - (ViewConfiguration.getJumpTapTimeout() >> 16), 574100428 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)), (byte) (46 - (ViewConfiguration.getEdgeSlop() >> 16)), (short) Color.blue(0), Color.argb(0, 0, 0, 0) - 1561282627).intern());
            MediaPlayer.OnCompletionListener onCompletionListener = (MediaPlayer.OnCompletionListener) fieldD.get(mediaPlayer);
            if (onCompletionListener instanceof ha) {
                return;
            }
            fieldD.set(mediaPlayer, new ha(onCompletionListener, cVar));
            int i4 = o + 33;
            p = i4 % 128;
            int i5 = i4 % 2;
        } catch (Exception e2) {
            jy.m987(b("ݯ\uf4f1䲿\ueb71", "俨ﲡ㕬∯", ViewConfiguration.getWindowTouchSlop() >> 8, (char) (1 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1))), "\u0add흄\ue334䏔팷\uf377꒧䖩㏲᪺⓲⦐").intern(), c((-84) - TextUtils.getTrimmedLength(""), Color.red(0) + 574100419, (byte) (View.MeasureSpec.makeMeasureSpec(0, 0) - 58), (short) (TextUtils.lastIndexOf("", '0') + 1), TextUtils.indexOf((CharSequence) "", '0', 0, 0) - 1561282606).intern(), (Throwable) e2, false);
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static View.OnClickListener m938(View view) {
        try {
            Class<?> cls = View.class;
            Object obj = view;
            if (Build.VERSION.SDK_INT > 14) {
                Object objA = a(view);
                if (objA == null) {
                    return null;
                }
                cls = objA.getClass();
                obj = objA;
            }
            synchronized (jt.class) {
                if (f5933e == null) {
                    f5933e = d(cls, b("ⴊ䱌䦼洔", "俨ﲡ㕬∯", (-1) - TextUtils.lastIndexOf("", '0'), (char) (5193 - TextUtils.indexOf("", "")), "\ued69㨓锫\ueafeⷮ윹贸⨙굿䓡텽䰬뀫\uf82f¨꼓").intern());
                }
            }
            return (View.OnClickListener) f5933e.get(obj);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00b9 A[Catch: all -> 0x0135, TryCatch #0 {all -> 0x0135, blocks: (B:3:0x0014, B:6:0x0022, B:8:0x0026, B:11:0x008a, B:10:0x002a, B:18:0x00a6, B:23:0x00af, B:30:0x012c, B:29:0x00b9), top: B:36:0x0014 }] */
    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.List<android.view.View> m939() {
        /*
            Method dump skipped, instruction units count: 409
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.jp.m939():java.util.List");
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m940(MediaPlayer mediaPlayer, gx.d dVar) {
        int i2 = p + 67;
        o = i2 % 128;
        int i3 = i2 % 2;
        try {
            Field fieldD = d(MediaPlayer.class, c((ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)) - 106, (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)) + 574100427, (byte) ((AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) - 84), (short) (Process.getGidForName("") + 1), (ViewConfiguration.getKeyRepeatTimeout() >> 16) - 1561282567).intern());
            MediaPlayer.OnPreparedListener onPreparedListener = (MediaPlayer.OnPreparedListener) fieldD.get(mediaPlayer);
            if (!(onPreparedListener instanceof gx)) {
                fieldD.set(mediaPlayer, new gx(onPreparedListener, dVar));
            }
            int i4 = p + 19;
            o = i4 % 128;
            int i5 = i4 % 2;
        } catch (Exception e2) {
            jy.m987(b("ݯ\uf4f1䲿\ueb71", "俨ﲡ㕬∯", TextUtils.getOffsetAfter("", 0), (char) View.MeasureSpec.getMode(0), "\u0add흄\ue334䏔팷\uf377꒧䖩㏲᪺⓲⦐").intern(), c((ViewConfiguration.getLongPressTimeout() >> 16) - 86, ImageFormat.getBitsPerPixel(0) + 574100420, (byte) (125 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24)), (short) (ViewConfiguration.getMaximumDrawingCacheSize() >> 24), (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) - 1561282550).intern(), (Throwable) e2, false);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static MediaPlayer m941(VideoView videoView) {
        Field fieldD;
        try {
            fieldD = d(VideoView.class, c((-113) - (ViewConfiguration.getTapTimeout() >> 16), (Process.myTid() >> 22) + 574100427, (byte) (20 - TextUtils.getCapsMode("", 0, 0)), (short) (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)), (-1561282672) - Color.blue(0)).intern());
        } catch (Exception e2) {
            jy.m987(b("ݯ\uf4f1䲿\ueb71", "俨ﲡ㕬∯", ViewConfiguration.getDoubleTapTimeout() >> 16, (char) (1 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1))), "\u0add흄\ue334䏔팷\uf377꒧䖩㏲᪺⓲⦐").intern(), b("ᰙ媺紉ꔘ", "俨ﲡ㕬∯", 156940828 - Color.blue(0), (char) (Process.myPid() >> 22), "伣裾⼫䐡\ufff5臂浱\udd2b慱\ud929엀윾枡雙運잿燇Ŭ寭Ⱎ䩩\ue344⨎").intern(), (Throwable) e2, false);
        }
        if (!(fieldD != null)) {
            int i2 = p + 101;
            o = i2 % 128;
            int i3 = i2 % 2;
            return null;
        }
        int i4 = p + 105;
        o = i4 % 128;
        if (!(i4 % 2 != 0)) {
            return (MediaPlayer) fieldD.get(videoView);
        }
        throw null;
    }
}
