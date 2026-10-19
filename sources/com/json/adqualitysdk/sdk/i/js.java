package com.json.adqualitysdk.sdk.i;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.media.AudioTrack;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class js {
    private static int a = 55;
    private static long b = 3480262788787777189L;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5938d = 1;

    private static String a(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (f.f54) {
            char[] cArrM713 = f.m713(b, cArr, i);
            f.f52 = 4;
            while (true) {
                int i2 = f.f52;
                if (i2 < cArrM713.length) {
                    f.f53 = i2 - 4;
                    cArrM713[f.f52] = (char) (((long) (cArrM713[r1] ^ cArrM713[r1 % 4])) ^ (((long) f.f53) * b));
                    f.f52++;
                } else {
                    str2 = new String(cArrM713, 4, cArrM713.length - 4);
                }
            }
        }
        return str2;
    }

    private static String b(int i, boolean z, int i2, int i3, String str) {
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

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static String m944() {
        String strA;
        String strIntern = "";
        int i = c + 17;
        f5938d = i % 128;
        try {
            try {
                if ((i % 2 == 0 ? 'Q' : 'E') != 'E') {
                    Class.forName(a("\ue7c4\ue7a7辧Ⅽ遞쵹蹩薨崥\ue6f0\udace䍟銕걙Ὧґ절冪䀞빺\u0df1ᜠ諍珂䍎\udc47켣㔂룬臖燚\ueeb6ﶭ䝤", 0 << Color.red(0)).intern());
                    strA = a("䗗䖢藹걐褘", (SystemClock.uptimeMillis() > 1L ? 1 : (SystemClock.uptimeMillis() == 1L ? 0 : -1)));
                } else {
                    Class.forName(a("\ue7c4\ue7a7辧Ⅽ遞쵹蹩薨崥\ue6f0\udace䍟銕걙Ὧґ절冪䀞빺\u0df1ᜠ諍珂䍎\udc47켣㔂룬臖燚\ueeb6ﶭ䝤", 1 - Color.red(0)).intern());
                    strA = a("䗗䖢藹걐褘", (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)));
                }
                strIntern = strA.intern();
                return strIntern;
            } catch (ClassNotFoundException unused) {
                return a("떋뗥ⱟ檫戫", 1 - Gravity.getAbsoluteGravity(0, 0)).intern();
            }
        } catch (ClassNotFoundException unused2) {
            Class.forName(a("銡鋂\uf0bf幵黋쏬ञ˟⡜駴푝쐲\ue7fa팝ᇫ莺뵾⺻仄㤕碕栻萃\uf481㘩ꍟ솶뉵춪ﻆ罅榖裞㡪듑✊䙠玓\uf274\ue27e᷆촉\u2ffd馑\udb05ࢳ撪圚障䏝ꈯዶⰰ鵉\udfbd졅\ueb5d\ud8e2ᕇ蟂ꛊቫ勡䊶", TextUtils.indexOf(strIntern, strIntern) + 1).intern());
            return a("\udd53\udd32폦뾡쿖", (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1))).intern();
        }
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static String m945(Context context) {
        int i = f5938d + 85;
        c = i % 128;
        int i2 = i % 2;
        PackageManager packageManager = context.getPackageManager();
        String packageName = context.getPackageName();
        try {
            String str = packageManager.getPackageInfo(packageName, 0).versionName;
            int i3 = c + 123;
            f5938d = i3 % 128;
            if ((i3 % 2 == 0 ? '\b' : '[') != '\b') {
                return str;
            }
            throw null;
        } catch (PackageManager.NameNotFoundException e2) {
            String strIntern = a("섐셑\udf3c燩懸㳂좥쌟篰뙬⭰ׯ", ExpandableListView.getPackedPositionGroup(0L) + 1).intern();
            StringBuilder sb = new StringBuilder();
            sb.append(a("락뜾岍\uf247ຣ厜\ufadb\uf158ඍ㗚䑥㞯쉵缧膋瀻飡芜\udefb쪐嵆쐙ᑡ܂Ꮉཀྵ凓䇥\ue864勷\uef3b驍굑鑚⒥퓑揽", -TextUtils.indexOf((CharSequence) "", '0')).intern());
            sb.append(packageName);
            sb.append(b((ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 131, true, TextUtils.indexOf("", "", 0, 0) + 8, 10 - TextUtils.getTrimmedLength(""), "'$''\u001aￕ￢ￕￕ\uffef").intern());
            sb.append(e2.getLocalizedMessage());
            m.m1019(strIntern, sb.toString());
            return null;
        }
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static boolean m946(Context context, String str) {
        int i = f5938d + 85;
        c = i % 128;
        int i2 = i % 2;
        if (context.checkCallingOrSelfPermission(str) != 0) {
            return false;
        }
        int i3 = f5938d + 109;
        c = i3 % 128;
        int i4 = i3 % 2;
        return true;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m947(Context context, JSONObject jSONObject) {
        int i = f5938d + 15;
        c = i % 128;
        int i2 = i % 2;
        String strIntern = a("섐셑\udf3c燩懸㳂좥쌟篰뙬⭰ׯ", 1 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24)).intern();
        String packageName = context.getPackageName();
        try {
            jSONObject.put(b((SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) + 165, false, View.combineMeasuredStates(0, 0) + 1, (ViewConfiguration.getEdgeSlop() >> 16) + 2, "\uffff\u0001").intern(), packageName);
        } catch (JSONException e2) {
            m.m1032(strIntern, a("芛苘\ud8d3瘙蘩\udb16\ue4cb\uef48㡫놄쳯⦿\uf793ﭿऀ渻괇ې噥풍梯䁊鳩\u193e☛譺\ud951念\udd85횡柴葛飸၂갪쫀噔寸", (Process.myTid() >> 22) + 1).intern(), e2);
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            jSONObject.put(b(155 - View.combineMeasuredStates(0, 0), false, (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 1, (KeyEvent.getMaxKeyCode() >> 16) + 2, "\u0002\uffff").intern(), packageManager.getInstallerPackageName(packageName));
        } catch (JSONException e3) {
            StringBuilder sb = new StringBuilder();
            sb.append(a("\ue82a\ue869\ue7dd䤗\ueffb닄꿹ꑺ勚躊ꔽ抍鴢쑱惒┉잶㧕㾬龢Ȏ罉\uf532利䲫됦냊ᓙ뜳\ue9a3\u0e6d콼\uf241⼉얲臯㳫擵荋䓕杪\uda6b庚㼳ꆑ῟ᖸ\uf1e3\uec56咹판둃嚵診껄溅", 1 - ((Process.getThreadPriority(0) + 20) >> 6)).intern());
            sb.append(e3.getLocalizedMessage());
            m.m1019(strIntern, sb.toString());
        }
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
            jSONObject.put(a("䤜䥪픙篟蟏ㅦ", -TextUtils.indexOf((CharSequence) "", '0', 0)).intern(), Integer.toString(packageInfo.versionCode));
            jSONObject.put(b(169 - (ViewConfiguration.getPressedStateDuration() >> 16), false, 1 - (Process.myPid() >> 22), 1 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)), "￼\u0004").intern(), packageInfo.versionName);
        } catch (PackageManager.NameNotFoundException e4) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(a("락뜾岍\uf247ຣ厜\ufadb\uf158ඍ㗚䑥㞯쉵缧膋瀻飡芜\udefb쪐嵆쐙ᑡ܂Ꮉཀྵ凓䇥\ue864勷\uef3b驍굑鑚⒥퓑揽", ExpandableListView.getPackedPositionGroup(0L) + 1).intern());
            sb2.append(packageName);
            sb2.append(b(129 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)), true, KeyEvent.normalizeMetaState(0) + 8, (ViewConfiguration.getScrollBarSize() >> 8) + 10, "'$''\u001aￕ￢ￕￕ\uffef").intern());
            sb2.append(e4.getLocalizedMessage());
            m.m1019(strIntern, sb2.toString());
        } catch (JSONException e5) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(a("㸩㹪畉\udb83놣\uec9cヤ㭧蓙ᰞﭥ\ufd90䬡囥㺊먔ᆵꭉ懪¼푙\uedcaꭣ촪骾⚩\ueedd诚慱笽倰偦⑊뷘鮾ỳ\ueaa9\uf666\udd05\udb87녳䢾Âꀡ瞓赖䯡溢㩏왨", -Process.getGidForName("")).intern());
            sb3.append(e5.getLocalizedMessage());
            m.m1019(strIntern, sb3.toString());
        }
        try {
            jSONObject.put(b(159 - ExpandableListView.getPackedPositionChild(0L), true, 1 - ((Process.getThreadPriority(0) + 20) >> 6), 3 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)), "\ufffb\u0005").intern(), packageManager.getApplicationLabel(packageManager.getApplicationInfo(packageName, 0)).toString());
            int i3 = c + 41;
            f5938d = i3 % 128;
            if (!(i3 % 2 == 0)) {
            } else {
                throw null;
            }
        } catch (PackageManager.NameNotFoundException e6) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append(a("락뜾岍\uf247ຣ厜\ufadb\uf158ඍ㗚䑥㞯쉵缧膋瀻飡芜\udefb쪐嵆쐙ᑡ܂Ꮉཀྵ凓䇥\ue864勷\uef3b驍굑鑚⒥퓑揽", Color.green(0) + 1).intern());
            sb4.append(packageName);
            sb4.append(b((TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)) + 130, true, 8 - TextUtils.getCapsMode("", 0, 0), (ViewConfiguration.getMaximumFlingVelocity() >> 16) + 10, "'$''\u001aￕ￢ￕￕ\uffef").intern());
            sb4.append(e6.getLocalizedMessage());
            m.m1019(strIntern, sb4.toString());
        } catch (JSONException e7) {
            StringBuilder sb5 = new StringBuilder();
            sb5.append(a("ᜍᝎ졵暿漌㈳娥冦귽ꄢ◊靑戅\uebd9\ue025탕㢑ᙵ뽅橽ﵽ僮痈ꟴ뎌鯜ぴ\ue11b䠓옇軑㪵൮ä䔏琮쏂䭞Ϸ넉顜\uf5de\ude3f쫪康〢锁", 1 - (ViewConfiguration.getTapTimeout() >> 16)).intern());
            sb5.append(e7.getLocalizedMessage());
            m.m1019(strIntern, sb5.toString());
        }
    }
}
