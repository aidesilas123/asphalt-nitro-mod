package com.google.common.io;

import com.google.common.base.Joiner;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Lists;
import com.google.common.graph.Traverser;
import com.google.common.graph.r0;
import com.google.common.hash.HashCode;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class Files {
    private static final r0<File> a = new b();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    private static abstract class FilePredicate implements com.google.common.base.k<File> {
        public static final FilePredicate a = new a("IS_DIRECTORY", 0);
        public static final FilePredicate b = new b("IS_FILE", 1);
        private static final /* synthetic */ FilePredicate[] c = e();

        enum a extends FilePredicate {
            a(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.base.k
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public boolean apply(File file) {
                return file.isDirectory();
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Files.isDirectory()";
            }
        }

        enum b extends FilePredicate {
            b(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.base.k
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public boolean apply(File file) {
                return file.isFile();
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Files.isFile()";
            }
        }

        private FilePredicate(String str, int i) {
        }

        /* synthetic */ FilePredicate(String str, int i, a aVar) {
            this(str, i);
        }

        private static /* synthetic */ FilePredicate[] e() {
            return new FilePredicate[]{a, b};
        }

        public static FilePredicate valueOf(String str) {
            return (FilePredicate) Enum.valueOf(FilePredicate.class, str);
        }

        public static FilePredicate[] values() {
            return (FilePredicate[]) c.clone();
        }
    }

    class a implements j<List<String>> {
        final List<String> a = Lists.newArrayList();

        a() {
        }

        @Override // com.google.common.io.j
        public boolean a(String str) {
            this.a.add(str);
            return true;
        }

        @Override // com.google.common.io.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public List<String> getResult() {
            return this.a;
        }
    }

    class b implements r0<File> {
        b() {
        }

        @Override // com.google.common.graph.r0
        /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
        public Iterable<File> a(File file) {
            File[] fileArrListFiles;
            return (!file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) ? ImmutableList.of() : Collections.unmodifiableList(Arrays.asList(fileArrListFiles));
        }
    }

    private static final class c extends e {
        private final File a;
        private final ImmutableSet<FileWriteMode> b;

        private c(File file, FileWriteMode... fileWriteModeArr) {
            this.a = (File) Preconditions.checkNotNull(file);
            this.b = ImmutableSet.copyOf(fileWriteModeArr);
        }

        /* synthetic */ c(File file, FileWriteMode[] fileWriteModeArr, a aVar) {
            this(file, fileWriteModeArr);
        }

        @Override // com.google.common.io.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public FileOutputStream b() throws IOException {
            return new FileOutputStream(this.a, this.b.contains(FileWriteMode.APPEND));
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            String strValueOf2 = String.valueOf(this.b);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 20 + strValueOf2.length());
            sb.append("Files.asByteSink(");
            sb.append(strValueOf);
            sb.append(", ");
            sb.append(strValueOf2);
            sb.append(")");
            return sb.toString();
        }
    }

    private static final class d extends ByteSource {
        private final File a;

        private d(File file) {
            this.a = (File) Preconditions.checkNotNull(file);
        }

        /* synthetic */ d(File file, a aVar) {
            this(file);
        }

        @Override // com.google.common.io.ByteSource
        public byte[] h() throws Throwable {
            try {
                FileInputStream fileInputStream = (FileInputStream) Closer.create().a(f());
                return ByteStreams.e(fileInputStream, fileInputStream.getChannel().size());
            } finally {
            }
        }

        @Override // com.google.common.io.ByteSource
        public Optional<Long> i() {
            return this.a.isFile() ? Optional.of(Long.valueOf(this.a.length())) : Optional.absent();
        }

        @Override // com.google.common.io.ByteSource
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public FileInputStream f() throws IOException {
            return new FileInputStream(this.a);
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 20);
            sb.append("Files.asByteSource(");
            sb.append(strValueOf);
            sb.append(")");
            return sb.toString();
        }
    }

    private Files() {
    }

    private static MappedByteBuffer a(File file, FileChannel.MapMode mapMode, long j) throws Throwable {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(mapMode);
        Closer closerCreate = Closer.create();
        try {
            FileChannel fileChannel = (FileChannel) closerCreate.a(((RandomAccessFile) closerCreate.a(new RandomAccessFile(file, mapMode == FileChannel.MapMode.READ_ONLY ? "r" : "rw"))).getChannel());
            if (j == -1) {
                j = fileChannel.size();
            }
            return fileChannel.map(mapMode, 0L, j);
        } finally {
        }
    }

    @Deprecated
    public static void append(CharSequence charSequence, File file, Charset charset) throws Throwable {
        asCharSink(file, charset, FileWriteMode.APPEND).b(charSequence);
    }

    public static e asByteSink(File file, FileWriteMode... fileWriteModeArr) {
        return new c(file, fileWriteModeArr, null);
    }

    public static ByteSource asByteSource(File file) {
        return new d(file, null);
    }

    public static g asCharSink(File file, Charset charset, FileWriteMode... fileWriteModeArr) {
        return asByteSink(file, fileWriteModeArr).a(charset);
    }

    public static CharSource asCharSource(File file, Charset charset) {
        return asByteSource(file).a(charset);
    }

    public static void copy(File file, File file2) throws Throwable {
        Preconditions.checkArgument(!file.equals(file2), "Source %s and destination %s must be different", file, file2);
        asByteSource(file).c(asByteSink(file2, new FileWriteMode[0]));
    }

    public static void copy(File file, OutputStream outputStream) throws Throwable {
        asByteSource(file).d(outputStream);
    }

    @Deprecated
    public static void copy(File file, Charset charset, Appendable appendable) throws Throwable {
        asCharSource(file, charset).a(appendable);
    }

    public static void createParentDirs(File file) throws IOException {
        Preconditions.checkNotNull(file);
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile == null) {
            return;
        }
        parentFile.mkdirs();
        if (parentFile.isDirectory()) {
            return;
        }
        String strValueOf = String.valueOf(file);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 39);
        sb.append("Unable to create parent directories of ");
        sb.append(strValueOf);
        throw new IOException(sb.toString());
    }

    @Deprecated
    public static File createTempDir() {
        File file = new File(System.getProperty("java.io.tmpdir"));
        long jCurrentTimeMillis = System.currentTimeMillis();
        StringBuilder sb = new StringBuilder(21);
        sb.append(jCurrentTimeMillis);
        sb.append("-");
        String string = sb.toString();
        for (int i = 0; i < 10000; i++) {
            StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 11);
            sb2.append(string);
            sb2.append(i);
            File file2 = new File(file, sb2.toString());
            if (file2.mkdir()) {
                return file2;
            }
        }
        StringBuilder sb3 = new StringBuilder(String.valueOf(string).length() + 66 + String.valueOf(string).length());
        sb3.append("Failed to create directory within 10000 attempts (tried ");
        sb3.append(string);
        sb3.append("0 to ");
        sb3.append(string);
        sb3.append(9999);
        sb3.append(')');
        throw new IllegalStateException(sb3.toString());
    }

    public static boolean equal(File file, File file2) throws IOException {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(file2);
        if (file == file2 || file.equals(file2)) {
            return true;
        }
        long length = file.length();
        long length2 = file2.length();
        if (length == 0 || length2 == 0 || length == length2) {
            return asByteSource(file).b(asByteSource(file2));
        }
        return false;
    }

    public static Traverser<File> fileTraverser() {
        return Traverser.forTree(a);
    }

    public static String getFileExtension(String str) {
        Preconditions.checkNotNull(str);
        String name = new File(str).getName();
        int iLastIndexOf = name.lastIndexOf(46);
        return iLastIndexOf == -1 ? "" : name.substring(iLastIndexOf + 1);
    }

    public static String getNameWithoutExtension(String str) {
        Preconditions.checkNotNull(str);
        String name = new File(str).getName();
        int iLastIndexOf = name.lastIndexOf(46);
        return iLastIndexOf == -1 ? name : name.substring(0, iLastIndexOf);
    }

    @Deprecated
    public static HashCode hash(File file, com.google.common.hash.l lVar) throws IOException {
        return asByteSource(file).e(lVar);
    }

    public static com.google.common.base.k<File> isDirectory() {
        return FilePredicate.a;
    }

    public static com.google.common.base.k<File> isFile() {
        return FilePredicate.b;
    }

    public static MappedByteBuffer map(File file) throws IOException {
        Preconditions.checkNotNull(file);
        return map(file, FileChannel.MapMode.READ_ONLY);
    }

    public static MappedByteBuffer map(File file, FileChannel.MapMode mapMode) throws IOException {
        return a(file, mapMode, -1L);
    }

    public static MappedByteBuffer map(File file, FileChannel.MapMode mapMode, long j) throws IOException {
        Preconditions.checkArgument(j >= 0, "size (%s) may not be negative", j);
        return a(file, mapMode, j);
    }

    public static void move(File file, File file2) throws Throwable {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(file2);
        Preconditions.checkArgument(!file.equals(file2), "Source %s and destination %s must be different", file, file2);
        if (file.renameTo(file2)) {
            return;
        }
        copy(file, file2);
        if (file.delete()) {
            return;
        }
        if (file2.delete()) {
            String strValueOf = String.valueOf(file);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 17);
            sb.append("Unable to delete ");
            sb.append(strValueOf);
            throw new IOException(sb.toString());
        }
        String strValueOf2 = String.valueOf(file2);
        StringBuilder sb2 = new StringBuilder(strValueOf2.length() + 17);
        sb2.append("Unable to delete ");
        sb2.append(strValueOf2);
        throw new IOException(sb2.toString());
    }

    public static BufferedReader newReader(File file, Charset charset) throws FileNotFoundException {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(charset);
        return new BufferedReader(new InputStreamReader(new FileInputStream(file), charset));
    }

    public static BufferedWriter newWriter(File file, Charset charset) throws FileNotFoundException {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(charset);
        return new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), charset));
    }

    @Deprecated
    public static <T> T readBytes(File file, com.google.common.io.d<T> dVar) throws IOException {
        return (T) asByteSource(file).g(dVar);
    }

    @Deprecated
    public static String readFirstLine(File file, Charset charset) throws IOException {
        return asCharSource(file, charset).e();
    }

    @Deprecated
    public static <T> T readLines(File file, Charset charset, j<T> jVar) throws IOException {
        return (T) asCharSource(file, charset).f(jVar);
    }

    public static List<String> readLines(File file, Charset charset) throws IOException {
        return (List) asCharSource(file, charset).f(new a());
    }

    public static String simplifyPath(String str) {
        Preconditions.checkNotNull(str);
        if (str.length() == 0) {
            return ".";
        }
        Iterable<String> iterableH = Splitter.on('/').f().h(str);
        ArrayList arrayList = new ArrayList();
        for (String str2 : iterableH) {
            str2.hashCode();
            if (!str2.equals(".")) {
                if (!str2.equals("..")) {
                    arrayList.add(str2);
                } else if (arrayList.size() <= 0 || ((String) arrayList.get(arrayList.size() - 1)).equals("..")) {
                    arrayList.add("..");
                } else {
                    arrayList.remove(arrayList.size() - 1);
                }
            }
        }
        String strE = Joiner.on('/').e(arrayList);
        if (str.charAt(0) == '/') {
            String strValueOf = String.valueOf(strE);
            strE = strValueOf.length() != 0 ? "/".concat(strValueOf) : new String("/");
        }
        while (strE.startsWith("/../")) {
            strE = strE.substring(3);
        }
        return strE.equals("/..") ? "/" : "".equals(strE) ? "." : strE;
    }

    public static byte[] toByteArray(File file) throws IOException {
        return asByteSource(file).h();
    }

    @Deprecated
    public static String toString(File file, Charset charset) throws IOException {
        return asCharSource(file, charset).d();
    }

    public static void touch(File file) throws IOException {
        Preconditions.checkNotNull(file);
        if (file.createNewFile() || file.setLastModified(System.currentTimeMillis())) {
            return;
        }
        String strValueOf = String.valueOf(file);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 38);
        sb.append("Unable to update modification time of ");
        sb.append(strValueOf);
        throw new IOException(sb.toString());
    }

    @Deprecated
    public static void write(CharSequence charSequence, File file, Charset charset) throws Throwable {
        asCharSink(file, charset, new FileWriteMode[0]).b(charSequence);
    }

    public static void write(byte[] bArr, File file) throws Throwable {
        asByteSink(file, new FileWriteMode[0]).c(bArr);
    }
}
