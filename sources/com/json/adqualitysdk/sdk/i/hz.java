package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.ImageFormat;
import android.graphics.PointF;
import android.os.Process;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.applovin.exoplayer2.common.base.Ascii;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes4.dex */
public final class hz {
    private static final byte[] a;
    private static long b = 0;
    private static int[] c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5745d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5746e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Cipher f5747f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Cipher f5748g;
    private SecretKey h;

    public class d extends Exception {
        public d(String str) {
            super(str);
        }
    }

    static {
        d();
        a = new byte[]{Ascii.DLE, 74, 71, -80, 32, 101, -47, 72, 117, -14, 0, -29, 70, 65, -12, 74};
        int i = f5746e + 55;
        f5745d = i % 128;
        int i2 = i % 2;
    }

    public hz(byte[] bArr, String str, String str2, String str3) {
        byte[] bArrDigest;
        try {
            SecretKeyFactory secretKeyFactory = SecretKeyFactory.getInstance(c("\ue1e0﴾㝓暭\ue1b0䛳䀈呗ྕ咡剁䘗㷐數撄槆⬐筏皴鯺奒褈܉赱䚉鿖⤴뼷瓊궊㯸껺戇", -(ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1))).intern());
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(str2);
            sb.append(str3);
            bArrDigest = secretKeyFactory.generateSecret(new PBEKeySpec(sb.toString().toCharArray(), bArr, 1024, 256)).getEncoded();
        } catch (GeneralSecurityException unused) {
            ic.m827(b(new int[]{-1683223370, -1308380100, 1650127041, 383274805, 2143195107, -575921534, -49756692, 902599335, 1996696962, 212923162}, MotionEvent.axisFromString("") + 20).intern(), c("᷃\ua7ea惶ꕵᶓᰗជ鞺\uf39eใ׀藥솛㾌㌎ꩰ휞⇇ⅇ塻ꕞ폥備亜몆씳绐糉袋\uf779氕洖鸎颺驑ጊ氃諑衺Ɓ綶밯랫㞜叿깤ꗦ␖Ⅎ徻팡쩚㝧䆕셹\uf878ҿ猃\uf0b3\ueead\u1ae8敕Ế", -Process.getGidForName("")).intern());
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(b(new int[]{876589817, 33843836}, MotionEvent.axisFromString("") + 4).intern());
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append(str2);
                sb2.append(str3);
                for (char c2 : sb2.toString().toCharArray()) {
                    messageDigest.update((byte) c2);
                }
                bArrDigest = messageDigest.digest();
            } catch (NoSuchAlgorithmException e2) {
                throw new RuntimeException(b(new int[]{1495022655, -1276456409, -1616852811, 1734016119, 154733999, -569905102, -218365774, 1079105339, -1224000321, -348351982}, 19 - (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1))).intern(), e2);
            }
        }
        this.h = new SecretKeySpec(bArrDigest, b(new int[]{2014783048, -972036252}, 4 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1))).intern());
        a();
    }

    private void a() {
        try {
            Cipher cipher = Cipher.getInstance(b(new int[]{-1371103456, 925180515, -841301050, -1288731209, 754263733, -1288945603, 578149145, -666028527, 616021616, 115031029}, 20 - (ViewConfiguration.getDoubleTapTimeout() >> 16)).intern());
            this.f5747f = cipher;
            SecretKey secretKey = this.h;
            byte[] bArr = a;
            cipher.init(1, secretKey, new IvParameterSpec(bArr));
            Cipher cipher2 = Cipher.getInstance(b(new int[]{-1371103456, 925180515, -841301050, -1288731209, 754263733, -1288945603, 578149145, -666028527, 616021616, 115031029}, ((Process.getThreadPriority(0) + 20) >> 6) + 20).intern());
            this.f5748g = cipher2;
            cipher2.init(2, this.h, new IvParameterSpec(bArr));
            int i = f5745d + 113;
            f5746e = i % 128;
            if ((i % 2 == 0 ? 'F' : (char) 31) != 'F') {
                return;
            }
            int i2 = 78 / 0;
        } catch (GeneralSecurityException e2) {
            throw new RuntimeException(c("컣\udbe0촑྇캪态멹㵋₳牂\ua82f⽎ዾ䎉黱ËХ巌貭\uf28b癶꿱ﵫ\ue43a槽", (ViewConfiguration.getFadingEdgeLength() >> 16) + 1).intern(), e2);
        }
    }

    private static String b(int[] iArr, int i) {
        String str;
        synchronized (b.f33) {
            char[] cArr = new char[4];
            char[] cArr2 = new char[iArr.length << 1];
            int[] iArr2 = (int[]) c.clone();
            b.f34 = 0;
            while (true) {
                int i2 = b.f34;
                if (i2 < iArr.length) {
                    cArr[0] = (char) (iArr[i2] >> 16);
                    cArr[1] = (char) iArr[i2];
                    cArr[2] = (char) (iArr[i2 + 1] >> 16);
                    cArr[3] = (char) iArr[i2 + 1];
                    b.f31 = (cArr[0] << 16) + cArr[1];
                    b.f32 = (cArr[2] << 16) + cArr[3];
                    b.m390(iArr2);
                    for (int i3 = 0; i3 < 16; i3++) {
                        int i4 = b.f31 ^ iArr2[i3];
                        b.f31 = i4;
                        b.f32 = b.m391(i4) ^ b.f32;
                        int i5 = b.f31;
                        b.f31 = b.f32;
                        b.f32 = i5;
                    }
                    int i6 = b.f31;
                    b.f31 = b.f32;
                    b.f32 = i6;
                    b.f32 = i6 ^ iArr2[16];
                    b.f31 ^= iArr2[17];
                    int i7 = b.f32;
                    int i8 = b.f31;
                    cArr[0] = (char) (i8 >>> 16);
                    cArr[1] = (char) i8;
                    int i9 = b.f32;
                    cArr[2] = (char) (i9 >>> 16);
                    cArr[3] = (char) i9;
                    b.m390(iArr2);
                    int i10 = b.f34;
                    cArr2[i10 << 1] = cArr[0];
                    cArr2[(i10 << 1) + 1] = cArr[1];
                    cArr2[(i10 << 1) + 2] = cArr[2];
                    cArr2[(i10 << 1) + 3] = cArr[3];
                    b.f34 = i10 + 2;
                } else {
                    str = new String(cArr2, 0, i);
                }
            }
        }
        return str;
    }

    private static String c(String str, int i) {
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

    static void d() {
        b = 889239157515336591L;
        c = new int[]{-380535145, 84418913, -456080513, -1713151820, -680866155, 1890050601, -1104827435, -199115476, 1238709623, -885521421, -1945067436, -2136600086, 1723887216, -1892743401, -292235888, -525449415, -1049610706, 96996864};
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final synchronized String m822(String str) throws d {
        int i = f5746e + 59;
        f5745d = i % 128;
        if (i % 2 != 0) {
            TextUtils.isEmpty(str);
            throw null;
        }
        if ((TextUtils.isEmpty(str) ? '`' : ' ') == '`') {
            int i2 = f5746e + 83;
            int i3 = i2 % 128;
            f5745d = i3;
            int i4 = i2 % 2;
            int i5 = i3 + 21;
            f5746e = i5 % 128;
            int i6 = i5 % 2;
            return null;
        }
        try {
            try {
                try {
                    try {
                        String str2 = new String(this.f5748g.doFinal(ia.m825(str)), c("𢡄빆༫\ude9f徭֝硳\uec1fᓔ", 1 - (ViewConfiguration.getKeyRepeatDelay() >> 16)).intern());
                        if (str2.indexOf(c("垯ߡ\ue806\udddf埌밁齵\uef5c맠깅贳ﵛ讻龇뮾튘鵲臎ꦸ⃗\uef31珹\ud826㘷\uf0f7攳\uf620Ш슆坓\ue4d3ᖅ푩㢴\u12b1毽☬⫯\u008c礽㟁ᱧ㼍佪", 1 - View.combineMeasuredStates(0, 0)).intern()) == 0) {
                            return str2.substring(c("垯ߡ\ue806\udddf埌밁齵\uef5c맠깅贳ﵛ讻龇뮾튘鵲臎ꦸ⃗\uef31珹\ud826㘷\uf0f7攳\uf620Ш슆坓\ue4d3ᖅ푩㢴\u12b1毽☬⫯\u008c礽㟁ᱧ㼍佪", Color.blue(0) + 1).intern().length(), str2.length());
                        }
                        StringBuilder sb = new StringBuilder();
                        sb.append(b(new int[]{1894445121, 1013293045, -1068368645, -2054105546, 1085584593, 1421621313, -2088501711, -851957652, 269307838, -1635684875, 439326506, -1321327975, -633211244, -790252569, -1265367024, 1808480111, -722227695, 179492451, 925005121, -1899067625}, (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)) + 39).intern());
                        sb.append(str);
                        throw new d(sb.toString());
                    } catch (UnsupportedEncodingException e2) {
                        throw new RuntimeException(b(new int[]{1495022655, -1276456409, -1616852811, 1734016119, 154733999, -569905102, -218365774, 1079105339, -1224000321, -348351982}, 19 - (ViewConfiguration.getScrollDefaultDelay() >> 16)).intern(), e2);
                    }
                } catch (IllegalBlockSizeException e3) {
                    a();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(e3.getMessage());
                    sb2.append(b(new int[]{-312910652, 1307797507}, -ImageFormat.getBitsPerPixel(0)).intern());
                    sb2.append(str);
                    throw new d(sb2.toString());
                }
            } catch (hy e4) {
                a();
                StringBuilder sb3 = new StringBuilder();
                sb3.append(e4.getMessage());
                sb3.append(b(new int[]{-312910652, 1307797507}, TextUtils.indexOf("", "", 0, 0) + 1).intern());
                sb3.append(str);
                throw new d(sb3.toString());
            }
        } catch (BadPaddingException e5) {
            a();
            StringBuilder sb4 = new StringBuilder();
            sb4.append(e5.getMessage());
            sb4.append(b(new int[]{-312910652, 1307797507}, 1 - (ViewConfiguration.getMinimumFlingVelocity() >> 16)).intern());
            sb4.append(str);
            throw new d(sb4.toString());
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized String m823(String str) {
        if (TextUtils.isEmpty(str)) {
            int i = f5745d + 81;
            f5746e = i % 128;
            if (i % 2 != 0) {
                return str;
            }
            int i2 = 19 / 0;
            return str;
        }
        try {
            try {
                Cipher cipher = this.f5747f;
                StringBuilder sb = new StringBuilder();
                sb.append(c("垯ߡ\ue806\udddf埌밁齵\uef5c맠깅贳ﵛ讻龇뮾튘鵲臎ꦸ⃗\uef31珹\ud826㘷\uf0f7攳\uf620Ш슆坓\ue4d3ᖅ푩㢴\u12b1毽☬⫯\u008c礽㟁ᱧ㼍佪", 1 - View.combineMeasuredStates(0, 0)).intern());
                sb.append(str);
                String strM824 = ia.m824(cipher.doFinal(sb.toString().getBytes(c("𢡄빆༫\ude9f徭֝硳\uec1fᓔ", 1 - (ViewConfiguration.getLongPressTimeout() >> 16)).intern())));
                int i3 = f5746e + 9;
                f5745d = i3 % 128;
                int i4 = i3 % 2;
                return strM824;
            } catch (UnsupportedEncodingException e2) {
                a();
                throw new RuntimeException(b(new int[]{1495022655, -1276456409, -1616852811, 1734016119, 154733999, -569905102, -218365774, 1079105339, -1224000321, -348351982}, 19 - (ViewConfiguration.getPressedStateDuration() >> 16)).intern(), e2);
            }
        } catch (GeneralSecurityException e3) {
            a();
            throw new RuntimeException(b(new int[]{1495022655, -1276456409, -1616852811, 1734016119, 154733999, -569905102, -218365774, 1079105339, -1224000321, -348351982}, ImageFormat.getBitsPerPixel(0) + 20).intern(), e3);
        }
    }
}
