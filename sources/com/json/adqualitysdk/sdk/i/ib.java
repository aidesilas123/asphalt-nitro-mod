package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.ImageFormat;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.media.AudioTrack;
import android.os.Process;
import android.os.SystemClock;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes4.dex */
public final class ib {
    private static int a = 0;
    private static long b = 0;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5757d = 1;

    /* JADX INFO: renamed from: ᕂ, reason: contains not printable characters */
    public static String f69;

    /* JADX INFO: renamed from: ᕃ, reason: contains not printable characters */
    public static String f70;

    /* JADX INFO: renamed from: ᕄ, reason: contains not printable characters */
    public static String f71;

    /* JADX INFO: renamed from: ᕆ, reason: contains not printable characters */
    public static String f72;

    /* JADX INFO: renamed from: ᖅ, reason: contains not printable characters */
    public static String f73;

    /* JADX INFO: renamed from: ᖩ, reason: contains not printable characters */
    public static String f74;

    /* JADX INFO: renamed from: ᖫ, reason: contains not printable characters */
    public static String f75;

    /* JADX INFO: renamed from: ᖭ, reason: contains not printable characters */
    public static String f76;

    /* JADX INFO: renamed from: ᖸ, reason: contains not printable characters */
    public static String f77;

    /* JADX INFO: renamed from: ᖺ, reason: contains not printable characters */
    public static String f78;

    /* JADX INFO: renamed from: ᗀ, reason: contains not printable characters */
    public static String f79;

    /* JADX INFO: renamed from: ᘥ, reason: contains not printable characters */
    public static String f80;

    /* JADX INFO: renamed from: ᵆ, reason: contains not printable characters */
    public static String f81;

    /* JADX INFO: renamed from: Ḟ, reason: contains not printable characters */
    public static String f82;

    /* JADX INFO: renamed from: Ḹ, reason: contains not printable characters */
    public static String f83;

    /* JADX INFO: renamed from: Ḽ, reason: contains not printable characters */
    public static String f84;

    /* JADX INFO: renamed from: Ṿ, reason: contains not printable characters */
    public static String f85;

    /* JADX INFO: renamed from: Ὑ, reason: contains not printable characters */
    public static String f86;

    /* JADX INFO: renamed from: Ῠ, reason: contains not printable characters */
    public static String f87;

    /* JADX INFO: renamed from: Ῡ, reason: contains not printable characters */
    public static String f88;

    /* JADX INFO: renamed from: Ὺ, reason: contains not printable characters */
    public static String f89;

    /* JADX INFO: renamed from: Ύ, reason: contains not printable characters */
    public static String f90;

    /* JADX INFO: renamed from: K, reason: contains not printable characters */
    public static String f91;

    /* JADX INFO: renamed from: Ⅽ, reason: contains not printable characters */
    public static String f92;

    /* JADX INFO: renamed from: Ↄ, reason: contains not printable characters */
    public static String f93;

    /* JADX INFO: renamed from: く, reason: contains not printable characters */
    public static String f94;

    /* JADX INFO: renamed from: っ, reason: contains not printable characters */
    public static String f95;

    /* JADX INFO: renamed from: へ, reason: contains not printable characters */
    public static String f96;

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public static String f97;

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public static String f98;

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static String f99;

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static String f100;

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static String f101;

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static String f102;

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static String f103;

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static String f104;

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static String f105;

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static String f106;

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static String f107;

    /* JADX INFO: renamed from: ףּ, reason: contains not printable characters */
    public static String f108;

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public static String f109;

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public static String f110;

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public static String f111;

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public static String f112;

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public static String f113;

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public static String f114;

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public static String f115;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static String f116;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static String f117;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static String f118;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static String f119;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static String f120;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static String f121;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static String f122;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String f123;

    static {
        c();
        f120 = a(136 - TextUtils.getTrimmedLength(""), true, 5 - (ViewConfiguration.getLongPressTimeout() >> 16), ExpandableListView.getPackedPositionGroup(0L) + 11, "\ufffb\ufff9\b\u0002�\u0002\u0003�\b\ufff5\u0006").intern();
        f122 = a((ViewConfiguration.getWindowTouchSlop() >> 8) + 136, false, 5 - (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)), 4 - Color.red(0), "�\u0002\b\ufffb").intern();
        f121 = b("➗搀ꂖ\ued28", 17291 - KeyEvent.keyCodeFromString("")).intern();
        f119 = a((Process.myTid() >> 22) + 130, false, 5 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)), (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) + 6, "￮\u0013\n\uffff\ufffb\ufffe").intern();
        f123 = a(((byte) KeyEvent.getModifierMetaStateMask()) + 126, false, TextUtils.indexOf((CharSequence) "", '0', 0) + 6, 6 - (ViewConfiguration.getMinimumFlingVelocity() >> 16), "\u0003\uffe7\u0000\u0012\u0007\u0000").intern();
        f115 = b("➓涗", Drawable.resolveOpacity(0, 0) + 18947).intern();
        f114 = b("➐㋎ശ枏狩䵐", 5471 - View.resolveSizeAndState(0, 0, 0)).intern();
        f116 = b("➕ळ竡ꮝ鵑컷㾢慄", 11952 - TextUtils.indexOf((CharSequence) "", '0')).intern();
        f117 = a(131 - TextUtils.indexOf("", ""), true, View.MeasureSpec.makeMeasureSpec(0, 0) + 5, Color.blue(0) + 9, "\ufffa￩￼￼\u0010\f\u0006\ufffa\u000b").intern();
        f118 = b("➊᭳并酇푂᜵䨤", (ViewConfiguration.getScrollBarSize() >> 8) + 15601).intern();
        f113 = b("➊\ue4a7ꇙ滠⬜\ue83a", KeyEvent.normalizeMetaState(0) + 49957).intern();
        f109 = b("➈慰꩟\uf37f㱓䕈蹞흅ၟ奒", 18170 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1))).intern();
        f111 = a(133 - (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)), false, (ViewConfiguration.getTouchSlop() >> 8) + 1, 4 - ImageFormat.getBitsPerPixel(0), "￼\ufff9￼\u000e\u0001").intern();
        f112 = a(ExpandableListView.getPackedPositionType(0L) + 135, false, (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 5, 5 - (Process.myTid() >> 22), "\ufff6\ufff9\u000b\ufffe\t").intern();
        f110 = b("➆꺺㗣밥Ͱ", 35129 - (ViewConfiguration.getTouchSlop() >> 8)).intern();
        f108 = a(View.MeasureSpec.makeMeasureSpec(0, 0) + 133, false, Color.rgb(0, 0, 0) + 16777217, (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + 6, "\u0003\ufffb￼\n\u000b￬\t").intern();
        f107 = a(131 - TextUtils.indexOf("", ""), true, 9 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)), '8' - AndroidCharacter.getMirror('0'), "\u0005\u000b￮\u0005\ufffa\u0007\u0002\uffff").intern();
        f105 = b("➄\ue912몼䱏ᷨ⽏\uf003膤", Color.alpha(0) + 52889).intern();
        f106 = b("➄ꇆ⬖땳㺡렅", 34381 - Color.argb(0, 0, 0, 0)).intern();
        f104 = a(ImageFormat.getBitsPerPixel(0) + 136, true, 6 - TextUtils.indexOf((CharSequence) "", '0', 0), (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 7, "\ufffa\u0005\u000e￩\u000b\t\ufff8").intern();
        f102 = b("➂㹋ᐭ櫳䂫ꚉ", (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 6608).intern();
        f101 = a(135 - (ViewConfiguration.getTapTimeout() >> 16), true, 7 - (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)), AndroidCharacter.getMirror('0') - ')', "\b\u0001\u0007￪\u000b\t\ufff8").intern();
        f100 = b("➔䥶既欛鰙\u0de4뻆", View.combineMeasuredStates(0, 0) + 28387).intern();
        f103 = b("➑埭읅皻\ue619ᙤ藆", (ViewConfiguration.getPressedStateDuration() >> 16) + 28771).intern();
        f99 = a(137 - View.combineMeasuredStates(0, 0), false, Gravity.getAbsoluteGravity(0, 0) + 4, 6 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)), "\b\u0005\uffff\u0006￼\ufff6\u0002").intern();
        f95 = a(138 - (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)), true, View.resolveSize(0, 0) + 7, 7 - (ViewConfiguration.getTouchSlop() >> 8), "\u0005\ufffe\u0004\u0007\ufff9\uffff\ufffb").intern();
        f98 = a(View.resolveSizeAndState(0, 0, 0) + 137, false, 2 - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), 6 - (KeyEvent.getMaxKeyCode() >> 16), "\uffff\u0006\ufff8\ufff6\b\u0005").intern();
        f97 = b("➎ⱈ〒Ӳࢽ", View.combineMeasuredStates(0, 0) + 3019).intern();
        f96 = a(View.MeasureSpec.getSize(0) + 133, true, KeyEvent.getDeadChar(0, 0) + 3, TextUtils.getOffsetBefore("", 0) + 5, "\ufffa\ufffb\u0000\u0005\u0007").intern();
        f94 = b("➎銌䶞㢸\uf3ab", 46351 - Color.blue(0)).intern();
        f89 = a(133 - MotionEvent.axisFromString(""), true, (ViewConfiguration.getMinimumFlingVelocity() >> 16) + 3, 5 - ((Process.getThreadPriority(0) + 20) >> 6), "\b\ufffa\uffff\u0007\ufffb").intern();
        f90 = a((TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 128, false, 3 - Color.red(0), 4 - View.combineMeasuredStates(0, 0), "\u0000�\u0000\u0005").intern();
        f92 = a(132 - (ViewConfiguration.getMaximumFlingVelocity() >> 16), true, 2 - Color.alpha(0), Color.argb(0, 0, 0, 0) + 5, "￼\u0001\u000e￼\ufff9").intern();
        f91 = b("➎\uf35e踮夀", 54493 - TextUtils.getOffsetBefore("", 0)).intern();
        f93 = b("➎奐\uda22寪\udcdd嶜\udf66偒", ((byte) KeyEvent.getModifierMetaStateMask()) + 32468).intern();
        f86 = b("➎\uf790螢垮柅㟜쟦霒", (ViewConfiguration.getJumpTapTimeout() >> 16) + 53267).intern();
        f87 = a(TextUtils.lastIndexOf("", '0') + 128, false, 8 - (ViewConfiguration.getFadingEdgeLength() >> 16), TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 10, "\u0006\u0002\uffde\u0001\ufff0\u000f\u0000\u0010\n").intern();
        f85 = b("➢掲꿄\uebe0㜟猚뽐ﭱښ䊵軏쨃ᘧ", 17491 - AndroidCharacter.getMirror('0')).intern();
        f84 = a((ViewConfiguration.getScrollBarSize() >> 8) + 124, true, (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) + 7, 11 - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)), "\u0013\u0015\u0001\ufff0\u0014\u0003￡￨\u0004\u0005").intern();
        f88 = b("➯̉滚䦞딉郩ﮎ❛˲涥䥕", View.MeasureSpec.getSize(0) + 9391).intern();
        f81 = b("➯ᓡ䄊빆\ueab8⟶ᐨ䅷붫\ueafd❅", 13127 - (ViewConfiguration.getTouchSlop() >> 8)).intern();
        f79 = b("➯斣ꎎ\ue19c⾠涊ꮘ\ue9b6㞻疯뎱", 16901 - KeyEvent.keyCodeFromString("")).intern();
        f83 = b("➯\uf06d蠒ꃲ碘ᅤ⥊섚駏놡䩭", 55243 - (ViewConfiguration.getScrollDefaultDelay() >> 16)).intern();
        f80 = b("➯ᕏ䉖뼨\uec07\ud90fᛢ䏌냝\uedb9\uda84ខ䕯", TextUtils.lastIndexOf("", '0') + 13034).intern();
        f82 = a(125 - (ViewConfiguration.getScrollBarFadeDuration() >> 16), false, View.combineMeasuredStates(0, 0) + 1, 14 - (ViewConfiguration.getScrollDefaultDelay() >> 16), "\u0004\uffe7￠\u0002\u0013\ufff2\u0000\u0015\u0004\u0003\ufff2\u0013\u0000\u0013").intern();
        f76 = b("➒챁\uf028\ue4ea裺베ꅿ啛", 60372 - TextUtils.lastIndexOf("", '0')).intern();
        f77 = b("➈蚬旟쓹ꌠɞ\ue144侍⻆跲", TextUtils.lastIndexOf("", '0', 0, 0) + 41258).intern();
        f78 = b("➕肼", 42797 - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1))).intern();
        f75 = a(KeyEvent.normalizeMetaState(0) + IronSourceConstants.USING_CACHE_FOR_INIT_EVENT, false, 1 - MotionEvent.axisFromString(""), 3 - TextUtils.getOffsetAfter("", 0), "\ufff9\u0006\u0003").intern();
        f74 = b("➆沨뇦", 19259 - Color.argb(0, 0, 0, 0)).intern();
        f69 = a(128 - TextUtils.indexOf((CharSequence) "", '0'), true, 1 - View.MeasureSpec.makeMeasureSpec(0, 0), TextUtils.indexOf("", "") + 14, "\uffff\u000f\t\u0000\u0011￠\uffff\t\u0000￮\u000f\n￩\n").intern();
        f72 = b("➊ⱉ〕ӯ\u088fᵱ慑甋", (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) + 3018).intern();
        f70 = b("➕笥黟", 23719 - (ViewConfiguration.getWindowTouchSlop() >> 8)).intern();
        f71 = b("➗析Ʝ", 16459 - AndroidCharacter.getMirror('0')).intern();
        f73 = b("➎步빑섩", 19681 - ExpandableListView.getPackedPositionType(0L)).intern();
        int i = f5757d + 7;
        c = i % 128;
        if ((i % 2 != 0 ? 'L' : 'a') != 'L') {
        } else {
            throw null;
        }
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

    private static String b(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (h.f63) {
            h.f64 = i;
            char[] cArr2 = new char[cArr.length];
            h.f65 = 0;
            while (true) {
                int i2 = h.f65;
                if (i2 < cArr.length) {
                    cArr2[i2] = (char) (((long) (cArr[i2] ^ (h.f64 * i2))) ^ b);
                    h.f65++;
                } else {
                    str2 = new String(cArr2);
                }
            }
        }
        return str2;
    }

    static void c() {
        a = 28;
        b = 441523763521726439L;
    }
}
