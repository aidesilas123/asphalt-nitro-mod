package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.internal.util.activity.AdActivityIntent;
import com.google.android.gms.drive.DriveFile;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class KN {
    public static byte[] A00;
    public static String[] A01 = {"R2O7PMYP6nkOeNui3I4WlXx4fu7rpRKA", "y", "n9RLgUbY6qPVyxnn4C2MCNq6tOX6tKMu", "KtI8XvYnNiAs4lVQz", "VIjGruAAxxfbDEfj8", "jnPluIPOifq7BY1vqnqKLiUetY3DHsfM", "J5aiTqmsNT2689NKU", "zCaDldCe0EtEl2h3W"};
    public static final Package A02;
    public static final String A03;
    public static final String A04;
    public static final String A05;
    public static final Set<YA> A06;
    public static final AtomicReference<KW> A07;
    public static final AtomicReference<KY> A08;

    static {
        A07();
        Package r4 = KN.class.getPackage();
        A02 = r4;
        A04 = r4 + A06(40, 22, 98);
        A03 = r4 + A06(0, 19, 124);
        A05 = r4 + A06(19, 21, 38);
        A06 = Collections.newSetFromMap(new WeakHashMap());
        A07 = new AtomicReference<>();
        A08 = new AtomicReference<>();
    }

    public static Intent A00(Intent intent) {
        Intent intentCloneFilter = intent.cloneFilter();
        intentCloneFilter.setFlags(intent.getFlags());
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeBundle(intent.getExtras());
        intentCloneFilter.putExtra(A05, parcelObtain.marshall());
        parcelObtain.recycle();
        return intentCloneFilter;
    }

    public static Intent A01(Intent intent, ClassLoader classLoader) {
        Intent intentCloneFilter = intent.cloneFilter();
        intentCloneFilter.setFlags(intent.getFlags());
        Bundle bundle = new Bundle();
        Parcel parcelObtain = Parcel.obtain();
        byte[] byteArrayExtra = intent.getByteArrayExtra(A05);
        if (byteArrayExtra != null) {
            parcelObtain.unmarshall(byteArrayExtra, 0, byteArrayExtra.length);
            parcelObtain.setDataPosition(0);
            bundle = parcelObtain.readBundle(classLoader);
            parcelObtain.recycle();
        }
        intentCloneFilter.putExtras(bundle);
        return intentCloneFilter;
    }

    public static Bundle A02(Bundle bundle, ClassLoader classLoader) {
        Parcel parcelObtain = Parcel.obtain();
        byte[] byteArray = bundle.getByteArray(A04);
        if (byteArray == null) {
            throw new IllegalStateException(A06(62, 28, 122));
        }
        parcelObtain.unmarshall(byteArray, 0, byteArray.length);
        parcelObtain.setDataPosition(0);
        Bundle bundle2 = parcelObtain.readBundle(classLoader);
        parcelObtain.recycle();
        String[] strArr = A01;
        if (strArr[6].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[4] = "08vXapB5qdF8q1e2g";
        strArr2[3] = "bPV7EQI3jYdBWJzP2";
        return bundle2;
    }

    public static YA A03(Intent intent) {
        String stringExtra = intent.getStringExtra(A03);
        if (stringExtra == null) {
            return null;
        }
        for (YA ya : A06) {
            if (stringExtra.equals(ya.A0E().getId())) {
                return ya;
            }
        }
        return null;
    }

    public static AdActivityIntent A04(YA ya) {
        AdActivityIntent adActivityIntent = new AdActivityIntent(ya.getApplicationContext(), A05());
        adActivityIntent.putExtra(A03, ya.A0E().getId());
        A06.add(ya);
        return adActivityIntent;
    }

    public static Class A05() {
        if (A01[1].length() != 1) {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[4] = "4NnM5dRGBMW0KGxzs";
        strArr[3] = "N6FCbEqQMIqNBYuck";
        return AudienceNetworkActivity.class;
    }

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 18);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        A00 = new byte[]{-68, -49, -46, -36, -27, -19, -49, -46, -19, -35, -48, -40, -19, -41, -46, -19, -39, -45, -25, 102, 121, 124, -122, -113, -105, -121, -118, -127, Ascii.DEL, -127, -122, 121, -124, -105, 125, -112, -116, -118, 121, -117, -94, -75, -72, -62, -53, -45, -57, -75, -54, -71, -72, -45, -57, -56, -75, -56, -71, -45, -72, -75, -56, -75, -33, -19, 2, -15, -16, -84, -1, 0, -19, 0, -15, -84, -18, 1, -6, -16, -8, -15, -84, -11, -1, -84, -15, -7, -4, 0, 5, -83, -77, -75, -58, -79, -57, -58, -69, -66, -82, -69, -84, -80, -71, -74, -78, -69, -63, -84, -63, -68, -72, -78, -69};
    }

    public static void A08(Bundle bundle, Bundle bundle2) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeBundle(bundle2);
        bundle.putByteArray(A04, parcelObtain.marshall());
        parcelObtain.recycle();
    }

    public static void A09(YA ya, AdActivityIntent adActivityIntent) throws KL {
        Activity activityA0D;
        Context applicationContext = ya.getApplicationContext();
        if (IP.A21(ya) && (activityA0D = ya.A0D()) != null) {
            applicationContext = activityA0D;
            if ((adActivityIntent.getFlags() & DriveFile.MODE_READ_ONLY) == 268435456) {
                adActivityIntent.setFlags(adActivityIntent.getFlags() ^ DriveFile.MODE_READ_ONLY);
            }
        }
        try {
            applicationContext.startActivity(A00(adActivityIntent));
        } catch (ActivityNotFoundException e2) {
            throw new KL(e2);
        }
    }

    public static boolean A0A(Intent intent, Set<String> set) {
        Uri data = intent.getData();
        if (data == null) {
            return false;
        }
        String string = data.toString();
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            if (string.startsWith(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static boolean A0B(YA ya, Intent intent) throws KL {
        return A0D(ya, intent, A07.get());
    }

    public static boolean A0C(YA ya, Intent intent) throws KL {
        KW kw = A07.get();
        if (kw == null || ya.A0D() == null) {
            return false;
        }
        String strA0B = ya.A0B();
        try {
            Activity activityA0D = ya.A0D();
            if (strA0B == null) {
                strA0B = A06(0, 0, 81);
            }
            return kw.startActivityForResult(intent, 0, activityA0D, strA0B);
        } catch (ActivityNotFoundException e2) {
            throw new KL(e2);
        } catch (Exception e3) {
            ya.A07().A9M(A06(90, 8, 64), C08417x.A07, new C08427y(e3));
            return false;
        }
    }

    public static boolean A0D(YA ya, Intent intent, KW kw) throws KL {
        if (A0A(intent, IP.A0Y(ya))) {
            return false;
        }
        Context context = ya;
        String[] strArr = A01;
        if (strArr[6].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        A01[1] = "W";
        Activity activityA0D = ya.A0D();
        if (activityA0D != null) {
            context = activityA0D;
        } else {
            intent.addFlags(DriveFile.MODE_READ_ONLY);
        }
        if (kw == null || A0A(intent, IP.A0a(ya))) {
            try {
                context.startActivity(intent);
                String[] strArr2 = A01;
                if (strArr2[6].length() != strArr2[7].length()) {
                    return true;
                }
                String[] strArr3 = A01;
                strArr3[2] = "WDCv4eIjUMWn9vBjM5X6LVautGW56wKG";
                strArr3[0] = "ucZAZ4xNymzGZ0fLzzKXI63vhQI9uDah";
                return true;
            } catch (ActivityNotFoundException e2) {
                throw new KL(e2);
            }
        }
        String strA0B = ya.A0B();
        if (strA0B == null) {
            try {
                strA0B = A06(0, 0, 81);
            } catch (ActivityNotFoundException e3) {
                throw new KL(e3);
            } catch (Exception e4) {
                ya.A07().A9M(A06(90, 8, 64), C08417x.A08, new C08427y(e4));
                return false;
            }
        }
        return kw.startActivity(context, intent, strA0B);
    }

    public static boolean A0E(YA ya, Uri uri, String str) throws ActivityNotFoundException {
        return A0F(ya, uri, str, A08.get());
    }

    public static boolean A0F(YA ya, Uri uri, String str, KY ky) throws ActivityNotFoundException {
        if (ky == null || ya.A0D() == null) {
            return false;
        }
        Bundle bundle = new Bundle();
        bundle.putString(A06(98, 15, 59), str);
        return ky.handleUriForResult(ya, uri.toString(), bundle, null, 0, ya.A0D());
    }
}
