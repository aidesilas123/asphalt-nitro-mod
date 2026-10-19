package okio;

import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.file.OpenOption;
import java.security.MessageDigest;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import kotlin.jvm.functions.Function1;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* JADX INFO: loaded from: classes5.dex */
public final class Okio {
    public static final w appendingSink(File file) throws FileNotFoundException {
        return Okio__JvmOkioKt.appendingSink(file);
    }

    public static final FileSystem asResourceFileSystem(ClassLoader classLoader) {
        return Okio__JvmOkioKt.asResourceFileSystem(classLoader);
    }

    public static final w blackhole() {
        return Okio__OkioKt.blackhole();
    }

    public static final d buffer(w wVar) {
        return Okio__OkioKt.buffer(wVar);
    }

    public static final e buffer(y yVar) {
        return Okio__OkioKt.buffer(yVar);
    }

    public static final f cipherSink(w wVar, Cipher cipher) {
        return Okio__JvmOkioKt.cipherSink(wVar, cipher);
    }

    public static final g cipherSource(y yVar, Cipher cipher) {
        return Okio__JvmOkioKt.cipherSource(yVar, cipher);
    }

    public static final HashingSink hashingSink(w wVar, MessageDigest messageDigest) {
        return Okio__JvmOkioKt.hashingSink(wVar, messageDigest);
    }

    public static final HashingSink hashingSink(w wVar, Mac mac) {
        return Okio__JvmOkioKt.hashingSink(wVar, mac);
    }

    public static final HashingSource hashingSource(y yVar, MessageDigest messageDigest) {
        return Okio__JvmOkioKt.hashingSource(yVar, messageDigest);
    }

    public static final HashingSource hashingSource(y yVar, Mac mac) {
        return Okio__JvmOkioKt.hashingSource(yVar, mac);
    }

    public static final boolean isAndroidGetsocknameError(AssertionError assertionError) {
        return Okio__JvmOkioKt.isAndroidGetsocknameError(assertionError);
    }

    public static final FileSystem openZip(FileSystem fileSystem, Path path) throws IOException {
        return Okio__JvmOkioKt.openZip(fileSystem, path);
    }

    public static final w sink(File file) throws FileNotFoundException {
        return Okio__JvmOkioKt.sink(file);
    }

    public static final w sink(File file, boolean z) throws FileNotFoundException {
        return Okio__JvmOkioKt.sink(file, z);
    }

    public static final w sink(OutputStream outputStream) {
        return Okio__JvmOkioKt.sink(outputStream);
    }

    public static final w sink(Socket socket) throws IOException {
        return Okio__JvmOkioKt.sink(socket);
    }

    @IgnoreJRERequirement
    public static final w sink(java.nio.file.Path path, OpenOption... openOptionArr) throws IOException {
        return Okio__JvmOkioKt.sink(path, openOptionArr);
    }

    public static final y source(File file) throws FileNotFoundException {
        return Okio__JvmOkioKt.source(file);
    }

    public static final y source(InputStream inputStream) {
        return Okio__JvmOkioKt.source(inputStream);
    }

    public static final y source(Socket socket) throws IOException {
        return Okio__JvmOkioKt.source(socket);
    }

    @IgnoreJRERequirement
    public static final y source(java.nio.file.Path path, OpenOption... openOptionArr) throws IOException {
        return Okio__JvmOkioKt.source(path, openOptionArr);
    }

    public static final <T extends Closeable, R> R use(T t, Function1<? super T, ? extends R> function1) {
        return (R) Okio__OkioKt.use(t, function1);
    }
}
