package com.pgl.ssdk;

import java.io.File;
import java.io.FileFilter;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: com.pgl.ssdk.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
final class C1644b implements FileFilter {
    C1644b() {
    }

    @Override // java.io.FileFilter
    public boolean accept(File file) {
        return Pattern.matches("cpu[0-9]", file.getName());
    }
}
