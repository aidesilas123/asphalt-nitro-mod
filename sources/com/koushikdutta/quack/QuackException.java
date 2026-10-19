package com.koushikdutta.quack;

import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public final class QuackException extends RuntimeException {
    private static final String STACK_TRACE_CLASS_NAME = "JavaScript";
    private static final Pattern STACK_TRACE_PATTERN = Pattern.compile("\\s*at (\\[?)(.*?)]? \\((.*?):?(\\d+)?\\).*$");
    private static final long serialVersionUID = 1538523787401076917L;

    public QuackException(String str) {
        super(getErrorMessage(str));
        addJSStack(this, str);
    }

    public static void addJSStack(Throwable th, String str) {
        String[] strArrSplit = str.split("\n", -1);
        if (strArrSplit.length <= 1) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        StackTraceElement[] stackTrace = new Exception().getStackTrace();
        StackTraceElement stackTraceElement = stackTrace[0];
        StackTraceElement stackTraceElement2 = stackTrace[1];
        StackTraceElement stackTraceElement3 = stackTrace[2];
        boolean z = false;
        for (StackTraceElement stackTraceElement4 : th.getStackTrace()) {
            if (!z && (stackTraceElement4.equals(stackTraceElement) || stackTraceElement4.equals(stackTraceElement2) || stackTraceElement4.equals(stackTraceElement3))) {
                for (int i = 1; i < strArrSplit.length; i++) {
                    StackTraceElement stackTraceElement5 = toStackTraceElement(strArrSplit[i]);
                    if (stackTraceElement5 != null) {
                        arrayList.add(stackTraceElement5);
                    }
                }
                z = true;
            }
            arrayList.add(stackTraceElement4);
        }
        th.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[arrayList.size()]));
    }

    public static String addJavaStack(String str, Throwable th) {
        String[] strArrSplit = str.split("\n", 2);
        String str2 = strArrSplit[1];
        StringBuilder sb = new StringBuilder(strArrSplit[0]);
        StackTraceElement[] stackTrace = new Exception().getStackTrace();
        StackTraceElement stackTraceElement = stackTrace[0];
        StackTraceElement stackTraceElement2 = stackTrace[1];
        StackTraceElement stackTraceElement3 = stackTrace[2];
        boolean z = false;
        for (StackTraceElement stackTraceElement4 : th.getStackTrace()) {
            if (!z && (stackTraceElement4.equals(stackTraceElement) || stackTraceElement4.equals(stackTraceElement2) || stackTraceElement4.equals(stackTraceElement3))) {
                sb.append(str2);
                z = true;
            }
            sb.append(String.format("\n    at [%s.%s] (%s:%s)", stackTraceElement4.getClassName(), stackTraceElement4.getMethodName(), stackTraceElement4.getFileName(), Integer.valueOf(stackTraceElement4.getLineNumber())));
        }
        return sb.toString();
    }

    private static String getErrorMessage(String str) {
        int iIndexOf = str.indexOf(10);
        return iIndexOf > 0 ? str.substring(0, iIndexOf) : str;
    }

    private static StackTraceElement toStackTraceElement(String str) {
        Matcher matcher = STACK_TRACE_PATTERN.matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        return new StackTraceElement(matcher.group(1) == null ? STACK_TRACE_CLASS_NAME : "<javascript>", matcher.group(2), matcher.group(3), matcher.group(4) != null ? Integer.parseInt(matcher.group(4)) : 1);
    }
}
