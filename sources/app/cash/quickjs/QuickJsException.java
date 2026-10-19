package app.cash.quickjs;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
@Keep
public final class QuickJsException extends RuntimeException {
    private static final String STACK_TRACE_CLASS_NAME = "JavaScript";
    private static final Pattern STACK_TRACE_PATTERN = Pattern.compile("\\s*at ([^\\s]+) \\(([^\\s]+(?<!cpp))[:(\\d+)]?\\).*$");

    public QuickJsException(@NonNull String str) {
        this(str, null);
    }

    public QuickJsException(@NonNull String str, @Nullable String str2) {
        super(str);
        if (str2 != null) {
            addJavaScriptStack(this, str2);
        }
    }

    private static void addJavaScriptStack(Throwable th, String str) {
        String[] strArrSplit = str.split("\n", -1);
        if (strArrSplit.length == 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (StackTraceElement stackTraceElement : th.getStackTrace()) {
            if (!z && stackTraceElement.isNativeMethod() && stackTraceElement.getClassName().equals(QuickJs.class.getName())) {
                for (String str2 : strArrSplit) {
                    StackTraceElement stackTraceElement2 = toStackTraceElement(str2);
                    if (stackTraceElement2 != null) {
                        arrayList.add(stackTraceElement2);
                    }
                }
                z = true;
            }
            arrayList.add(stackTraceElement);
        }
        th.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[arrayList.size()]));
    }

    private static StackTraceElement toStackTraceElement(String str) {
        Matcher matcher = STACK_TRACE_PATTERN.matcher(str);
        if (matcher.matches()) {
            return new StackTraceElement(STACK_TRACE_CLASS_NAME, matcher.group(1), matcher.group(2), matcher.groupCount() > 3 ? Integer.parseInt(matcher.group(3)) : -1);
        }
        return null;
    }
}
