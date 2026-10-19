package com.json.mediationsdk;

import android.text.TextUtils;
import android.util.Pair;
import com.json.environment.StringUtils;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceLogger;
import com.json.mediationsdk.logger.IronSourceLoggerManager;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class IronSourceSegment {
    public static final String AGE = "age";
    public static final String GENDER = "gen";
    public static final String IAPT = "iapt";
    public static final String LEVEL = "lvl";
    public static final String PAYING = "pay";
    public static final String USER_CREATION_DATE = "ucd";
    private String a;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f6232g;
    private int b = 999999;
    private double c = 999999.99d;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f6229d = "custom";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f6230e = 5;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f6231f = -1;
    private int h = -1;
    private AtomicBoolean i = null;
    private double j = -1.0d;
    private long k = 0;
    private ArrayList<Pair<String, String>> l = new ArrayList<>();

    private boolean a(String str) {
        if (str == null) {
            return false;
        }
        return str.matches("^[a-zA-Z0-9]*$");
    }

    private boolean b(String str, int i, int i2) {
        return str != null && str.length() >= i && str.length() <= i2;
    }

    public int getAge() {
        return this.f6231f;
    }

    public String getGender() {
        return this.f6232g;
    }

    public double getIapt() {
        return this.j;
    }

    public AtomicBoolean getIsPaying() {
        return this.i;
    }

    public int getLevel() {
        return this.h;
    }

    public ArrayList<Pair<String, String>> getSegmentData() {
        ArrayList<Pair<String, String>> arrayList = new ArrayList<>();
        if (this.f6231f != -1) {
            arrayList.add(new Pair<>("age", this.f6231f + ""));
        }
        if (!TextUtils.isEmpty(this.f6232g)) {
            arrayList.add(new Pair<>(GENDER, this.f6232g));
        }
        if (this.h != -1) {
            arrayList.add(new Pair<>(LEVEL, this.h + ""));
        }
        if (this.i != null) {
            arrayList.add(new Pair<>(PAYING, this.i + ""));
        }
        if (this.j != -1.0d) {
            arrayList.add(new Pair<>(IAPT, this.j + ""));
        }
        if (this.k != 0) {
            arrayList.add(new Pair<>(USER_CREATION_DATE, this.k + ""));
        }
        if (!TextUtils.isEmpty(this.a)) {
            arrayList.add(new Pair<>("segName", this.a));
        }
        arrayList.addAll(this.l);
        return arrayList;
    }

    public String getSegmentName() {
        return this.a;
    }

    public long getUcd() {
        return this.k;
    }

    public void setAge(int i) {
        if (i > 0 && i <= 199) {
            this.f6231f = i;
            return;
        }
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "setAge( " + i + " ) age must be between 1-199", 2);
    }

    public void setCustom(String str, String str2) {
        try {
            if (a(str) && a(str2) && b(str, 1, 32) && b(str2, 1, 32)) {
                String str3 = "custom_" + str;
                if (this.l.size() >= 5) {
                    this.l.remove(0);
                }
                this.l.add(new Pair<>(str3, str2));
                return;
            }
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "setCustom( " + str + " , " + str2 + " ) key and value must be alphanumeric and 1-32 in length", 2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void setGender(String str) {
        if (!TextUtils.isEmpty(str) && (StringUtils.toLowerCase(str).equals(IronSourceConstants.a.b) || StringUtils.toLowerCase(str).equals(IronSourceConstants.a.c))) {
            this.f6232g = str;
            return;
        }
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "setGender( " + str + " ) is invalid", 2);
    }

    public void setIAPTotal(double d2) {
        if (d2 > 0.0d && d2 < this.c) {
            this.j = Math.floor(d2 * 100.0d) / 100.0d;
            return;
        }
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "setIAPTotal( " + d2 + " ) iapt must be between 0-" + this.c, 2);
    }

    public void setIsPaying(boolean z) {
        if (this.i == null) {
            this.i = new AtomicBoolean();
        }
        this.i.set(z);
    }

    public void setLevel(int i) {
        if (i > 0 && i < this.b) {
            this.h = i;
            return;
        }
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "setLevel( " + i + " ) level must be between 1-" + this.b, 2);
    }

    public void setSegmentName(String str) {
        if (a(str) && b(str, 1, 32)) {
            this.a = str;
            return;
        }
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "setSegmentName( " + str + " ) segment name must be alphanumeric and 1-32 in length", 2);
    }

    public void setUserCreationDate(long j) {
        if (j > 0) {
            this.k = j;
            return;
        }
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "setUserCreationDate( " + j + " ) is an invalid timestamp", 2);
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        for (Pair<String, String> pair : getSegmentData()) {
            try {
                jSONObject.put((String) pair.first, pair.second);
            } catch (JSONException e2) {
                IronLog.INTERNAL.error("exception " + e2.getMessage());
            }
        }
        return jSONObject;
    }
}
