package io.didomi.drawable;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\b\u001a\u0004\u0018\u00010\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ'\u0010\u000b\u001a\u00020\n2\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u000b\u0010\fJU\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\r2\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\r2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u000b\u0010\u0012J\u0017\u0010\u000b\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u000b\u0010\u0014J!\u0010\u000b\u001a\u00020\n2\b\u0010\u0015\u001a\u0004\u0018\u00010\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u000b\u0010\u0017J\u0015\u0010\b\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\u0018¨\u0006\u0019"}, d2 = {"Lio/didomi/sdk/A3;", "", "<init>", "()V", "", "", "locales", "locale", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;", "", "a", "(Ljava/util/Set;Ljava/lang/String;)Z", "", "defaultCountries", "fallbackCodes", "Ljava/util/Locale;", "defaultLocale", "(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Locale;)Ljava/lang/String;", "language", "(Ljava/lang/String;)Ljava/util/Locale;", "locale1", "locale2", "(Ljava/lang/String;Ljava/lang/String;)Z", "(Ljava/lang/String;)Ljava/lang/String;", "android_release"}, mv = {1, 8, 0})
public final class A3 {
    public static final A3 a = new A3();

    private A3() {
    }

    private final String b(Set<String> locales, String locale) {
        Object next;
        Iterator<T> it = locales.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (StringsKt__StringsJVMKt.equals((String) next, C1802j5.a.c().g(locale, 0).get(0), true)) {
                break;
            }
        }
        return (String) next;
    }

    public final String a(Set<String> locales, Map<String, String> defaultCountries, Map<String, String> fallbackCodes, Locale defaultLocale) {
        Object obj = null;
        String language = defaultLocale != null ? defaultLocale.getLanguage() : null;
        String str = defaultCountries != null ? defaultCountries.get(language) : null;
        String str2 = fallbackCodes != null ? fallbackCodes.get(language) : null;
        if (locales == null || locales.isEmpty() || defaultLocale == null) {
            return null;
        }
        if (!locales.isEmpty()) {
            Iterator<T> it = locales.iterator();
            while (it.hasNext()) {
                if (a.a((String) it.next(), B3.a(defaultLocale))) {
                    Iterator<T> it2 = locales.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        Object next = it2.next();
                        if (a.a((String) next, B3.a(defaultLocale))) {
                            obj = next;
                            break;
                        }
                    }
                    return (String) obj;
                }
            }
        }
        if (defaultCountries != null && !defaultCountries.isEmpty() && str != null && !StringsKt__StringsJVMKt.isBlank(str)) {
            if (a(locales, language + '-' + str)) {
                return language + '-' + str;
            }
        }
        if (str2 != null && !StringsKt__StringsJVMKt.isBlank(str2) && a(locales, str2)) {
            return str2;
        }
        String language2 = defaultLocale.getLanguage();
        Intrinsics.checkNotNullExpressionValue(language2, "defaultLocale.language");
        return b(locales, language2);
    }

    public final Locale a(String language) {
        Locale locale;
        if (!C1925v8.a.b(language)) {
            Locale locale2 = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale2, "getDefault()");
            return locale2;
        }
        Intrinsics.checkNotNull(language, "null cannot be cast to non-null type kotlin.String");
        C1802j5 c1802j5 = C1802j5.a;
        if (c1802j5.c().a(language)) {
            List<String> listG = c1802j5.c().g(language, 0);
            String str = listG.get(0);
            Locale ENGLISH = Locale.ENGLISH;
            Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
            String lowerCase = str.toLowerCase(ENGLISH);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            String str2 = listG.get(1);
            Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
            String upperCase = str2.toUpperCase(ENGLISH);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            locale = new Locale(lowerCase, upperCase);
        } else {
            locale = new Locale(language);
        }
        return locale;
    }

    public final boolean a(String locale1, String locale2) {
        if (locale1 != null && !StringsKt__StringsJVMKt.isBlank(locale1) && locale2 != null && !StringsKt__StringsJVMKt.isBlank(locale2)) {
            if (StringsKt__StringsJVMKt.equals(locale1, locale2, true)) {
                return true;
            }
            C1802j5 c1802j5 = C1802j5.a;
            if (StringsKt__StringsJVMKt.equals(c1802j5.c().f(locale1, "-"), c1802j5.c().f(locale2, "-"), true)) {
                return true;
            }
        }
        return false;
    }

    public final boolean a(Set<String> locales, String locale) {
        if (locales != null && !locales.isEmpty() && locale != null && !StringsKt__StringsJVMKt.isBlank(locale) && !locales.isEmpty()) {
            Iterator<T> it = locales.iterator();
            while (it.hasNext()) {
                if (a.a((String) it.next(), locale)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final String b(String locale) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        return C1802j5.a.c().g(locale, 0).get(0);
    }
}
