package com.google.common.reflect;

import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.base.StandardSystemProperty;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import com.google.common.collect.o3;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.jar.Attributes;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.jar.Manifest;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes3.dex */
public final class ClassPath {
    private static final Logger a = Logger.getLogger(ClassPath.class.getName());
    private static final Splitter b = Splitter.on(" ").f();
    private final ImmutableSet<c> c;

    public static final class a extends c {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f3953d;

        a(File file, String str, ClassLoader classLoader) {
            super(file, str, classLoader);
            this.f3953d = ClassPath.c(str);
        }

        @Override // com.google.common.reflect.ClassPath.c
        public String toString() {
            return this.f3953d;
        }
    }

    static final class b {
        final File a;
        private final ClassLoader b;

        b(File file, ClassLoader classLoader) {
            this.a = (File) Preconditions.checkNotNull(file);
            this.b = (ClassLoader) Preconditions.checkNotNull(classLoader);
        }

        private void b(File file, Set<File> set, ImmutableSet.a<c> aVar) throws IOException {
            try {
                if (file.exists()) {
                    if (file.isDirectory()) {
                        c(file, aVar);
                    } else {
                        e(file, set, aVar);
                    }
                }
            } catch (SecurityException e2) {
                Logger logger = ClassPath.a;
                String strValueOf = String.valueOf(file);
                String strValueOf2 = String.valueOf(e2);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 16 + strValueOf2.length());
                sb.append("Cannot access ");
                sb.append(strValueOf);
                sb.append(": ");
                sb.append(strValueOf2);
                logger.warning(sb.toString());
            }
        }

        private void c(File file, ImmutableSet.a<c> aVar) throws IOException {
            HashSet hashSet = new HashSet();
            hashSet.add(file.getCanonicalFile());
            d(file, "", hashSet, aVar);
        }

        private void d(File file, String str, Set<File> set, ImmutableSet.a<c> aVar) throws IOException {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                Logger logger = ClassPath.a;
                String strValueOf = String.valueOf(file);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 22);
                sb.append("Cannot read directory ");
                sb.append(strValueOf);
                logger.warning(sb.toString());
                return;
            }
            for (File file2 : fileArrListFiles) {
                String name = file2.getName();
                if (file2.isDirectory()) {
                    File canonicalFile = file2.getCanonicalFile();
                    if (set.add(canonicalFile)) {
                        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(name).length());
                        sb2.append(str);
                        sb2.append(name);
                        sb2.append("/");
                        d(canonicalFile, sb2.toString(), set, aVar);
                        set.remove(canonicalFile);
                    }
                } else {
                    String strValueOf2 = String.valueOf(str);
                    String strValueOf3 = String.valueOf(name);
                    String strConcat = strValueOf3.length() != 0 ? strValueOf2.concat(strValueOf3) : new String(strValueOf2);
                    if (!strConcat.equals("META-INF/MANIFEST.MF")) {
                        aVar.a(c.a(file2, strConcat, this.b));
                    }
                }
            }
        }

        private void e(File file, Set<File> set, ImmutableSet.a<c> aVar) throws IOException {
            try {
                JarFile jarFile = new JarFile(file);
                try {
                    o3<File> it = ClassPath.f(file, jarFile.getManifest()).iterator();
                    while (it.hasNext()) {
                        File next = it.next();
                        if (set.add(next.getCanonicalFile())) {
                            b(next, set, aVar);
                        }
                    }
                    f(jarFile, aVar);
                } finally {
                    try {
                        jarFile.close();
                    } catch (IOException unused) {
                    }
                }
            } catch (IOException unused2) {
            }
        }

        private void f(JarFile jarFile, ImmutableSet.a<c> aVar) {
            Enumeration<JarEntry> enumerationEntries = jarFile.entries();
            while (enumerationEntries.hasMoreElements()) {
                JarEntry jarEntryNextElement = enumerationEntries.nextElement();
                if (!jarEntryNextElement.isDirectory() && !jarEntryNextElement.getName().equals("META-INF/MANIFEST.MF")) {
                    aVar.a(c.a(new File(jarFile.getName()), jarEntryNextElement.getName(), this.b));
                }
            }
        }

        public final File a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.a.equals(bVar.a) && this.b.equals(bVar.b);
        }

        public ImmutableSet<c> g(Set<File> set) throws IOException {
            ImmutableSet.a<c> aVarBuilder = ImmutableSet.builder();
            set.add(this.a);
            b(this.a, set, aVarBuilder);
            return aVarBuilder.n();
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return this.a.toString();
        }
    }

    public static class c {
        private final File a;
        private final String b;
        final ClassLoader c;

        c(File file, String str, ClassLoader classLoader) {
            this.a = (File) Preconditions.checkNotNull(file);
            this.b = (String) Preconditions.checkNotNull(str);
            this.c = (ClassLoader) Preconditions.checkNotNull(classLoader);
        }

        static c a(File file, String str, ClassLoader classLoader) {
            return str.endsWith(".class") ? new a(file, str, classLoader) : new c(file, str, classLoader);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.b.equals(cVar.b) && this.c == cVar.c;
        }

        public int hashCode() {
            return this.b.hashCode();
        }

        public String toString() {
            return this.b;
        }
    }

    private ClassPath(ImmutableSet<c> immutableSet) {
        this.c = immutableSet;
    }

    private static ImmutableList<URL> b(ClassLoader classLoader) {
        return classLoader instanceof URLClassLoader ? ImmutableList.copyOf(((URLClassLoader) classLoader).getURLs()) : classLoader.equals(ClassLoader.getSystemClassLoader()) ? h() : ImmutableList.of();
    }

    static String c(String str) {
        return str.substring(0, str.length() - 6).replace('/', '.');
    }

    static ImmutableMap<File, ClassLoader> d(ClassLoader classLoader) {
        LinkedHashMap linkedHashMapNewLinkedHashMap = Maps.newLinkedHashMap();
        ClassLoader parent = classLoader.getParent();
        if (parent != null) {
            linkedHashMapNewLinkedHashMap.putAll(d(parent));
        }
        o3<URL> it = b(classLoader).iterator();
        while (it.hasNext()) {
            URL next = it.next();
            if (next.getProtocol().equals("file")) {
                File fileI = i(next);
                if (!linkedHashMapNewLinkedHashMap.containsKey(fileI)) {
                    linkedHashMapNewLinkedHashMap.put(fileI, classLoader);
                }
            }
        }
        return ImmutableMap.copyOf((Map) linkedHashMapNewLinkedHashMap);
    }

    static URL e(File file, String str) throws MalformedURLException {
        return new URL(file.toURI().toURL(), str);
    }

    static ImmutableSet<File> f(File file, Manifest manifest) {
        if (manifest == null) {
            return ImmutableSet.of();
        }
        ImmutableSet.a aVarBuilder = ImmutableSet.builder();
        String value = manifest.getMainAttributes().getValue(Attributes.Name.CLASS_PATH.toString());
        if (value != null) {
            for (String str : b.h(value)) {
                try {
                    URL urlE = e(file, str);
                    if (urlE.getProtocol().equals("file")) {
                        aVarBuilder.a(i(urlE));
                    }
                } catch (MalformedURLException unused) {
                    Logger logger = a;
                    String strValueOf = String.valueOf(str);
                    logger.warning(strValueOf.length() != 0 ? "Invalid Class-Path entry: ".concat(strValueOf) : new String("Invalid Class-Path entry: "));
                }
            }
        }
        return aVarBuilder.n();
    }

    public static ClassPath from(ClassLoader classLoader) throws IOException {
        ImmutableSet<b> immutableSetG = g(classLoader);
        HashSet hashSet = new HashSet();
        o3<b> it = immutableSetG.iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().a());
        }
        ImmutableSet.a aVarBuilder = ImmutableSet.builder();
        o3<b> it2 = immutableSetG.iterator();
        while (it2.hasNext()) {
            aVarBuilder.k(it2.next().g(hashSet));
        }
        return new ClassPath(aVarBuilder.n());
    }

    static ImmutableSet<b> g(ClassLoader classLoader) {
        ImmutableSet.a aVarBuilder = ImmutableSet.builder();
        o3<Map.Entry<File, ClassLoader>> it = d(classLoader).entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<File, ClassLoader> next = it.next();
            aVarBuilder.a(new b(next.getKey(), next.getValue()));
        }
        return aVarBuilder.n();
    }

    static ImmutableList<URL> h() {
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        for (String str : Splitter.on(StandardSystemProperty.PATH_SEPARATOR.g()).h(StandardSystemProperty.JAVA_CLASS_PATH.g())) {
            try {
                try {
                    aVarBuilder.a(new File(str).toURI().toURL());
                } catch (SecurityException unused) {
                    aVarBuilder.a(new URL("file", (String) null, new File(str).getAbsolutePath()));
                }
            } catch (MalformedURLException e2) {
                Logger logger = a;
                Level level = Level.WARNING;
                String strValueOf = String.valueOf(str);
                logger.log(level, strValueOf.length() != 0 ? "malformed classpath entry: ".concat(strValueOf) : new String("malformed classpath entry: "), (Throwable) e2);
            }
        }
        return aVarBuilder.k();
    }

    static File i(URL url) {
        Preconditions.checkArgument(url.getProtocol().equals("file"));
        try {
            return new File(url.toURI());
        } catch (URISyntaxException unused) {
            return new File(url.getPath());
        }
    }
}
