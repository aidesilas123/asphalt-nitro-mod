package okhttp3.internal.cache;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.Flushable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlin.v;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.io.FileSystem;
import okhttp3.internal.platform.Platform;
import okio.Okio;
import okio.j;
import okio.w;
import okio.y;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Exception occurred when reading Kotlin metadata
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:108)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    Caused by: kotlin.metadata.internal.protobuf.InvalidProtocolBufferException: Message was missing required fields.  (Lite runtime could not determine which fields were missing).
    	at kotlin.metadata.internal.protobuf.UninitializedMessageException.asInvalidProtocolBufferException(UninitializedMessageException.java:81)
    	at kotlin.metadata.internal.protobuf.AbstractParser.checkMessageInitialized(AbstractParser.java:71)
    	at kotlin.metadata.internal.protobuf.AbstractParser.parseFrom(AbstractParser.java:209)
    	at kotlin.metadata.internal.protobuf.AbstractParser.parseFrom(AbstractParser.java:49)
    	at kotlin.metadata.internal.metadata.ProtoBuf$Class.parseFrom(ProtoBuf.java:10614)
    	at kotlin.metadata.internal.metadata.jvm.deserialization.JvmProtoBufUtil.readClassDataFrom(JvmProtoBufUtil.kt:37)
    	at kotlin.metadata.internal.metadata.jvm.deserialization.JvmProtoBufUtil.readClassDataFrom(JvmProtoBufUtil.kt:32)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	... 5 more
    */
/* JADX INFO: compiled from: DiskLruCache.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000y\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010)\n\u0002\b\u0007*\u0001\u0014\u0018\u0000 [2\u00020\u00012\u00020\u0002:\u0004[\\]^B7\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\b\u00108\u001a\u000209H\u0002J\b\u0010:\u001a\u000209H\u0016J!\u0010;\u001a\u0002092\n\u0010<\u001a\u00060=R\u00020\u00002\u0006\u0010>\u001a\u00020\u0010H\u0000¢\u0006\u0002\b?J\u0006\u0010@\u001a\u000209J \u0010A\u001a\b\u0018\u00010=R\u00020\u00002\u0006\u0010B\u001a\u00020(2\b\b\u0002\u0010C\u001a\u00020\u000bH\u0007J\u0006\u0010D\u001a\u000209J\b\u0010E\u001a\u000209H\u0016J\u0017\u0010F\u001a\b\u0018\u00010GR\u00020\u00002\u0006\u0010B\u001a\u00020(H\u0086\u0002J\u0006\u0010H\u001a\u000209J\u0006\u0010I\u001a\u00020\u0010J\b\u0010J\u001a\u00020\u0010H\u0002J\b\u0010K\u001a\u00020%H\u0002J\b\u0010L\u001a\u000209H\u0002J\b\u0010M\u001a\u000209H\u0002J\u0010\u0010N\u001a\u0002092\u0006\u0010O\u001a\u00020(H\u0002J\r\u0010P\u001a\u000209H\u0000¢\u0006\u0002\bQJ\u000e\u0010R\u001a\u00020\u00102\u0006\u0010B\u001a\u00020(J\u0019\u0010S\u001a\u00020\u00102\n\u0010T\u001a\u00060)R\u00020\u0000H\u0000¢\u0006\u0002\bUJ\b\u0010V\u001a\u00020\u0010H\u0002J\u0006\u00105\u001a\u00020\u000bJ\u0010\u0010W\u001a\f\u0012\b\u0012\u00060GR\u00020\u00000XJ\u0006\u0010Y\u001a\u000209J\u0010\u0010Z\u001a\u0002092\u0006\u0010B\u001a\u00020(H\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0010X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u000e\u0010\u001f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010&\u001a\u0012\u0012\u0004\u0012\u00020(\u0012\b\u0012\u00060)R\u00020\u00000'X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+R&\u0010\n\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020\u000b8F@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u000e\u00101\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b6\u00107¨\u0006_"}, d2 = {"Lokhttp3/internal/cache/DiskLruCache;", "Ljava/io/Closeable;", "Ljava/io/Flushable;", "fileSystem", "Lokhttp3/internal/io/FileSystem;", "directory", "Ljava/io/File;", "appVersion", "", "valueCount", SDKConstants.PARAM_CONTEXT_MAX_SIZE, "", "taskRunner", "Lokhttp3/internal/concurrent/TaskRunner;", "(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJLokhttp3/internal/concurrent/TaskRunner;)V", "civilizedFileSystem", "", "cleanupQueue", "Lokhttp3/internal/concurrent/TaskQueue;", "cleanupTask", "okhttp3/internal/cache/DiskLruCache$cleanupTask$1", "Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;", "closed", "getClosed$okhttp", "()Z", "setClosed$okhttp", "(Z)V", "getDirectory", "()Ljava/io/File;", "getFileSystem$okhttp", "()Lokhttp3/internal/io/FileSystem;", "hasJournalErrors", "initialized", "journalFile", "journalFileBackup", "journalFileTmp", "journalWriter", "Lokio/BufferedSink;", "lruEntries", "Ljava/util/LinkedHashMap;", "", "Lokhttp3/internal/cache/DiskLruCache$Entry;", "getLruEntries$okhttp", "()Ljava/util/LinkedHashMap;", "value", "getMaxSize", "()J", "setMaxSize", "(J)V", "mostRecentRebuildFailed", "mostRecentTrimFailed", "nextSequenceNumber", "redundantOpCount", "size", "getValueCount$okhttp", "()I", "checkNotClosed", "", "close", "completeEdit", "editor", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "success", "completeEdit$okhttp", "delete", "edit", "key", "expectedSequenceNumber", "evictAll", "flush", "get", "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", MobileAdsBridgeBase.initializeMethodName, "isClosed", "journalRebuildRequired", "newJournalWriter", "processJournal", "readJournal", "readJournalLine", "line", "rebuildJournal", "rebuildJournal$okhttp", "remove", "removeEntry", "entry", "removeEntry$okhttp", "removeOldestEntry", "snapshots", "", "trimToSize", "validateKey", "Companion", "Editor", "Entry", "Snapshot", "okhttp"}, mv = {1, 6, 0}, xi = 48)
public final class DiskLruCache implements Closeable, Flushable {
    public static final a a = new a(null);
    public static final String b = "journal";
    public static final String c = "journal.tmp";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f10638d = "journal.bkp";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f10639e = "libcore.io.DiskLruCache";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f10640f = "1";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final long f10641g = -1;
    public static final Regex h = new Regex("[a-z0-9_-]{1,120}");
    public static final String i = "CLEAN";
    public static final String j = "DIRTY";
    public static final String k = "REMOVE";
    public static final String l = "READ";
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private long E;
    private final TaskQueue F;
    private final e G;
    private final FileSystem m;
    private final File n;
    private final int o;
    private final int p;
    private long q;
    private final File r;
    private final File s;
    private final File t;
    private long u;
    private okio.d v;
    private final LinkedHashMap<String, c> w;
    private int x;
    private boolean y;
    private boolean z;

    /* JADX INFO: compiled from: DiskLruCache.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00068\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00068\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00068\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00068\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u00068\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u00068\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u00068\u0006X\u0087D¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lokhttp3/internal/cache/DiskLruCache$Companion;", "", "()V", "ANY_SEQUENCE_NUMBER", "", "CLEAN", "", "DIRTY", "JOURNAL_FILE", "JOURNAL_FILE_BACKUP", "JOURNAL_FILE_TEMP", "LEGAL_KEY_PATTERN", "Lkotlin/text/Regex;", "MAGIC", "READ", "REMOVE", "VERSION_1", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: DiskLruCache.kt */
    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0018\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0013\b\u0000\u0012\n\u0010\u0002\u001a\u00060\u0003R\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u000fJ\r\u0010\u0011\u001a\u00020\u000fH\u0000¢\u0006\u0002\b\u0012J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0015\u001a\u00020\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0002\u001a\u00060\u0003R\u00020\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0019"}, d2 = {"Lokhttp3/internal/cache/DiskLruCache$Editor;", "", "entry", "Lokhttp3/internal/cache/DiskLruCache$Entry;", "Lokhttp3/internal/cache/DiskLruCache;", "(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V", "done", "", "getEntry$okhttp", "()Lokhttp3/internal/cache/DiskLruCache$Entry;", "written", "", "getWritten$okhttp", "()[Z", "abort", "", "commit", "detach", "detach$okhttp", "newSink", "Lokio/Sink;", "index", "", "newSource", "Lokio/Source;", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public final class b {
        private final c a;
        private final boolean[] b;
        private boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ DiskLruCache f10642d;

        /* JADX INFO: compiled from: DiskLruCache.kt */
        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Ljava/io/IOException;", "invoke"}, mv = {1, 6, 0}, xi = 48)
        static final class a extends Lambda implements Function1<IOException, v> {
            final /* synthetic */ DiskLruCache a;
            final /* synthetic */ b b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(DiskLruCache diskLruCache, b bVar) {
                super(1);
                this.a = diskLruCache;
                this.b = bVar;
            }

            public final void a(IOException it) {
                Intrinsics.checkNotNullParameter(it, "it");
                DiskLruCache diskLruCache = this.a;
                b bVar = this.b;
                synchronized (diskLruCache) {
                    bVar.c();
                    v vVar = v.a;
                }
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(IOException iOException) {
                a(iOException);
                return v.a;
            }
        }

        public b(DiskLruCache this$0, c entry) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(entry, "entry");
            this.f10642d = this$0;
            this.a = entry;
            this.b = entry.g() ? null : new boolean[this$0.o()];
        }

        public final void a() throws IOException {
            DiskLruCache diskLruCache = this.f10642d;
            synchronized (diskLruCache) {
                if (!(!this.c)) {
                    throw new IllegalStateException("Check failed.".toString());
                }
                if (Intrinsics.areEqual(d().b(), this)) {
                    diskLruCache.e(this, false);
                }
                this.c = true;
                v vVar = v.a;
            }
        }

        public final void b() throws IOException {
            DiskLruCache diskLruCache = this.f10642d;
            synchronized (diskLruCache) {
                if (!(!this.c)) {
                    throw new IllegalStateException("Check failed.".toString());
                }
                if (Intrinsics.areEqual(d().b(), this)) {
                    diskLruCache.e(this, true);
                }
                this.c = true;
                v vVar = v.a;
            }
        }

        public final void c() throws IOException {
            if (Intrinsics.areEqual(this.a.b(), this)) {
                if (this.f10642d.z) {
                    this.f10642d.e(this, false);
                } else {
                    this.a.q(true);
                }
            }
        }

        public final c d() {
            return this.a;
        }

        public final boolean[] e() {
            return this.b;
        }

        public final w f(int i) {
            DiskLruCache diskLruCache = this.f10642d;
            synchronized (diskLruCache) {
                if (!(!this.c)) {
                    throw new IllegalStateException("Check failed.".toString());
                }
                if (!Intrinsics.areEqual(d().b(), this)) {
                    return Okio.blackhole();
                }
                if (!d().g()) {
                    boolean[] zArrE = e();
                    Intrinsics.checkNotNull(zArrE);
                    zArrE[i] = true;
                }
                try {
                    return new FaultHidingSink(diskLruCache.l().sink(d().c().get(i)), new a(diskLruCache, this));
                } catch (FileNotFoundException unused) {
                    return Okio.blackhole();
                }
            }
        }
    }

    /* JADX INFO: compiled from: DiskLruCache.kt */
    @Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0016\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0080\u0004\u0018\u00002\u00020\u0001B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010.\u001a\u00020/2\f\u00100\u001a\b\u0012\u0004\u0012\u00020\u000301H\u0002J\u0010\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\u001aH\u0002J\u001b\u00105\u001a\u0002062\f\u00100\u001a\b\u0012\u0004\u0012\u00020\u000301H\u0000¢\u0006\u0002\b7J\u0013\u00108\u001a\b\u0018\u000109R\u00020\fH\u0000¢\u0006\u0002\b:J\u0015\u0010;\u001a\u0002062\u0006\u0010<\u001a\u00020=H\u0000¢\u0006\u0002\b>R\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR \u0010\n\u001a\b\u0018\u00010\u000bR\u00020\fX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\tR\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u0016X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020 X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u001a\u0010%\u001a\u00020&X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u001a\u0010+\u001a\u00020 X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\"\"\u0004\b-\u0010$¨\u0006?"}, d2 = {"Lokhttp3/internal/cache/DiskLruCache$Entry;", "", "key", "", "(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V", "cleanFiles", "", "Ljava/io/File;", "getCleanFiles$okhttp", "()Ljava/util/List;", "currentEditor", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "Lokhttp3/internal/cache/DiskLruCache;", "getCurrentEditor$okhttp", "()Lokhttp3/internal/cache/DiskLruCache$Editor;", "setCurrentEditor$okhttp", "(Lokhttp3/internal/cache/DiskLruCache$Editor;)V", "dirtyFiles", "getDirtyFiles$okhttp", "getKey$okhttp", "()Ljava/lang/String;", "lengths", "", "getLengths$okhttp", "()[J", "lockingSourceCount", "", "getLockingSourceCount$okhttp", "()I", "setLockingSourceCount$okhttp", "(I)V", "readable", "", "getReadable$okhttp", "()Z", "setReadable$okhttp", "(Z)V", "sequenceNumber", "", "getSequenceNumber$okhttp", "()J", "setSequenceNumber$okhttp", "(J)V", "zombie", "getZombie$okhttp", "setZombie$okhttp", "invalidLengths", "", "strings", "", "newSource", "Lokio/Source;", "index", "setLengths", "", "setLengths$okhttp", "snapshot", "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "snapshot$okhttp", "writeLengths", "writer", "Lokio/BufferedSink;", "writeLengths$okhttp", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public final class c {
        private final String a;
        private final long[] b;
        private final List<File> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final List<File> f10643d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f10644e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f10645f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private b f10646g;
        private int h;
        private long i;
        final /* synthetic */ DiskLruCache j;

        /* JADX INFO: compiled from: DiskLruCache.kt */
        @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0004\u001a\u00020\u0005H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"okhttp3/internal/cache/DiskLruCache$Entry$newSource$1", "Lokio/ForwardingSource;", "closed", "", "close", "", "okhttp"}, mv = {1, 6, 0}, xi = 48)
        public static final class a extends j {
            private boolean a;
            final /* synthetic */ y b;
            final /* synthetic */ DiskLruCache c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ c f10647d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(y yVar, DiskLruCache diskLruCache, c cVar) {
                super(yVar);
                this.b = yVar;
                this.c = diskLruCache;
                this.f10647d = cVar;
            }

            @Override // okio.j, okio.y, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                super.close();
                if (this.a) {
                    return;
                }
                this.a = true;
                DiskLruCache diskLruCache = this.c;
                c cVar = this.f10647d;
                synchronized (diskLruCache) {
                    cVar.n(cVar.f() - 1);
                    if (cVar.f() == 0 && cVar.i()) {
                        diskLruCache.x(cVar);
                    }
                    v vVar = v.a;
                }
            }
        }

        public c(DiskLruCache this$0, String key) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(key, "key");
            this.j = this$0;
            this.a = key;
            this.b = new long[this$0.o()];
            this.c = new ArrayList();
            this.f10643d = new ArrayList();
            StringBuilder sb = new StringBuilder(key);
            sb.append('.');
            int length = sb.length();
            int iO = this$0.o();
            for (int i = 0; i < iO; i++) {
                sb.append(i);
                this.c.add(new File(this.j.k(), sb.toString()));
                sb.append(".tmp");
                this.f10643d.add(new File(this.j.k(), sb.toString()));
                sb.setLength(length);
            }
        }

        private final Void j(List<String> list) throws IOException {
            throw new IOException(Intrinsics.stringPlus("unexpected journal line: ", list));
        }

        private final y k(int i) throws FileNotFoundException {
            y yVarSource = this.j.l().source(this.c.get(i));
            if (this.j.z) {
                return yVarSource;
            }
            this.h++;
            return new a(yVarSource, this.j, this);
        }

        public final List<File> a() {
            return this.c;
        }

        public final b b() {
            return this.f10646g;
        }

        public final List<File> c() {
            return this.f10643d;
        }

        public final String d() {
            return this.a;
        }

        public final long[] e() {
            return this.b;
        }

        public final int f() {
            return this.h;
        }

        public final boolean g() {
            return this.f10644e;
        }

        public final long h() {
            return this.i;
        }

        public final boolean i() {
            return this.f10645f;
        }

        public final void l(b bVar) {
            this.f10646g = bVar;
        }

        public final void m(List<String> strings) throws IOException {
            Intrinsics.checkNotNullParameter(strings, "strings");
            if (strings.size() != this.j.o()) {
                j(strings);
                throw new KotlinNothingValueException();
            }
            int i = 0;
            try {
                int size = strings.size();
                while (i < size) {
                    int i2 = i + 1;
                    this.b[i] = Long.parseLong(strings.get(i));
                    i = i2;
                }
            } catch (NumberFormatException unused) {
                j(strings);
                throw new KotlinNothingValueException();
            }
        }

        public final void n(int i) {
            this.h = i;
        }

        public final void o(boolean z) {
            this.f10644e = z;
        }

        public final void p(long j) {
            this.i = j;
        }

        public final void q(boolean z) {
            this.f10645f = z;
        }

        public final d r() {
            DiskLruCache diskLruCache = this.j;
            if (Util.h && !Thread.holdsLock(diskLruCache)) {
                throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + diskLruCache);
            }
            if (!this.f10644e) {
                return null;
            }
            if (!this.j.z && (this.f10646g != null || this.f10645f)) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            long[] jArr = (long[]) this.b.clone();
            try {
                int iO = this.j.o();
                for (int i = 0; i < iO; i++) {
                    arrayList.add(k(i));
                }
                return new d(this.j, this.a, this.i, arrayList, jArr);
            } catch (FileNotFoundException unused) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Util.closeQuietly((y) it.next());
                }
                try {
                    this.j.x(this);
                } catch (IOException unused2) {
                }
                return null;
            }
        }

        public final void s(okio.d writer) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            long[] jArr = this.b;
            int length = jArr.length;
            int i = 0;
            while (i < length) {
                long j = jArr[i];
                i++;
                writer.writeByte(32).writeDecimalLong(j);
            }
        }
    }

    /* JADX INFO: compiled from: DiskLruCache.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0016\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u00020\u0001B-\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\b\u0010\f\u001a\u00020\rH\u0016J\f\u0010\u000e\u001a\b\u0018\u00010\u000fR\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0002\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "Ljava/io/Closeable;", "key", "", "sequenceNumber", "", "sources", "", "Lokio/Source;", "lengths", "", "(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;JLjava/util/List;[J)V", "close", "", "edit", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "Lokhttp3/internal/cache/DiskLruCache;", "getLength", "index", "", "getSource", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public final class d implements Closeable {
        private final String a;
        private final long b;
        private final List<y> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final long[] f10648d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ DiskLruCache f10649e;

        /* JADX WARN: Multi-variable type inference failed */
        public d(DiskLruCache this$0, String key, long j, List<? extends y> sources, long[] lengths) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(sources, "sources");
            Intrinsics.checkNotNullParameter(lengths, "lengths");
            this.f10649e = this$0;
            this.a = key;
            this.b = j;
            this.c = sources;
            this.f10648d = lengths;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            Iterator<y> it = this.c.iterator();
            while (it.hasNext()) {
                Util.closeQuietly(it.next());
            }
        }

        public final b d() throws IOException {
            return this.f10649e.g(this.a, this.b);
        }

        public final y e(int i) {
            return this.c.get(i);
        }
    }

    /* JADX INFO: compiled from: DiskLruCache.kt */
    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"okhttp3/internal/cache/DiskLruCache$cleanupTask$1", "Lokhttp3/internal/concurrent/Task;", "runOnce", "", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class e extends Task {
        e(String str) {
            super(str, false, 2, null);
        }

        @Override // okhttp3.internal.concurrent.Task
        public long f() {
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache) {
                if (!diskLruCache.A || diskLruCache.j()) {
                    return -1L;
                }
                try {
                    diskLruCache.J();
                } catch (IOException unused) {
                    diskLruCache.C = true;
                }
                try {
                    if (diskLruCache.q()) {
                        diskLruCache.v();
                        diskLruCache.x = 0;
                    }
                } catch (IOException unused2) {
                    diskLruCache.D = true;
                    diskLruCache.v = Okio.buffer(Okio.blackhole());
                }
                return -1L;
            }
        }
    }

    /* JADX INFO: compiled from: DiskLruCache.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Ljava/io/IOException;", "invoke"}, mv = {1, 6, 0}, xi = 48)
    static final class f extends Lambda implements Function1<IOException, v> {
        f() {
            super(1);
        }

        public final void a(IOException it) {
            Intrinsics.checkNotNullParameter(it, "it");
            DiskLruCache diskLruCache = DiskLruCache.this;
            if (!Util.h || Thread.holdsLock(diskLruCache)) {
                DiskLruCache.this.y = true;
                return;
            }
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + diskLruCache);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(IOException iOException) {
            a(iOException);
            return v.a;
        }
    }

    public DiskLruCache(FileSystem fileSystem, File directory, int i2, int i3, long j2, TaskRunner taskRunner) {
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        Intrinsics.checkNotNullParameter(directory, "directory");
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        this.m = fileSystem;
        this.n = directory;
        this.o = i2;
        this.p = i3;
        this.q = j2;
        this.w = new LinkedHashMap<>(0, 0.75f, true);
        this.F = taskRunner.g();
        this.G = new e(Intrinsics.stringPlus(Util.i, " Cache"));
        if (!(j2 > 0)) {
            throw new IllegalArgumentException("maxSize <= 0".toString());
        }
        if (!(i3 > 0)) {
            throw new IllegalArgumentException("valueCount <= 0".toString());
        }
        this.r = new File(directory, b);
        this.s = new File(directory, c);
        this.t = new File(directory, f10638d);
    }

    private final boolean I() throws IOException {
        for (c toEvict : this.w.values()) {
            if (!toEvict.i()) {
                Intrinsics.checkNotNullExpressionValue(toEvict, "toEvict");
                x(toEvict);
                return true;
            }
        }
        return false;
    }

    private final void K(String str) {
        if (h.e(str)) {
            return;
        }
        throw new IllegalArgumentException(("keys must match regex [a-z0-9_-]{1,120}: \"" + str + '\"').toString());
    }

    private final synchronized void d() {
        if (!(!this.B)) {
            throw new IllegalStateException("cache is closed".toString());
        }
    }

    public static /* synthetic */ b edit$default(DiskLruCache diskLruCache, String str, long j2, int i2, Object obj) throws IOException {
        if ((i2 & 2) != 0) {
            j2 = f10641g;
        }
        return diskLruCache.g(str, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean q() {
        int i2 = this.x;
        return i2 >= 2000 && i2 >= this.w.size();
    }

    private final okio.d r() throws FileNotFoundException {
        return Okio.buffer(new FaultHidingSink(this.m.appendingSink(this.r), new f()));
    }

    private final void s() throws IOException {
        this.m.delete(this.s);
        Iterator<c> it = this.w.values().iterator();
        while (it.hasNext()) {
            c next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "i.next()");
            c cVar = next;
            int i2 = 0;
            if (cVar.b() == null) {
                int i3 = this.p;
                while (i2 < i3) {
                    this.u += cVar.e()[i2];
                    i2++;
                }
            } else {
                cVar.l(null);
                int i4 = this.p;
                while (i2 < i4) {
                    this.m.delete(cVar.a().get(i2));
                    this.m.delete(cVar.c().get(i2));
                    i2++;
                }
                it.remove();
            }
        }
    }

    private final void t() throws IOException {
        okio.e eVarBuffer = Okio.buffer(this.m.source(this.r));
        try {
            String utf8LineStrict = eVarBuffer.readUtf8LineStrict();
            String utf8LineStrict2 = eVarBuffer.readUtf8LineStrict();
            String utf8LineStrict3 = eVarBuffer.readUtf8LineStrict();
            String utf8LineStrict4 = eVarBuffer.readUtf8LineStrict();
            String utf8LineStrict5 = eVarBuffer.readUtf8LineStrict();
            if (Intrinsics.areEqual(f10639e, utf8LineStrict) && Intrinsics.areEqual(f10640f, utf8LineStrict2) && Intrinsics.areEqual(String.valueOf(this.o), utf8LineStrict3) && Intrinsics.areEqual(String.valueOf(o()), utf8LineStrict4)) {
                int i2 = 0;
                if (!(utf8LineStrict5.length() > 0)) {
                    while (true) {
                        try {
                            u(eVarBuffer.readUtf8LineStrict());
                            i2++;
                        } catch (EOFException unused) {
                            this.x = i2 - m().size();
                            if (eVarBuffer.exhausted()) {
                                this.v = r();
                            } else {
                                v();
                            }
                            v vVar = v.a;
                            CloseableKt.closeFinally(eVarBuffer, null);
                            return;
                        }
                    }
                }
            }
            throw new IOException("unexpected journal header: [" + utf8LineStrict + ", " + utf8LineStrict2 + ", " + utf8LineStrict4 + ", " + utf8LineStrict5 + ']');
        } finally {
        }
    }

    private final void u(String str) throws IOException {
        String strSubstring;
        int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, ' ', 0, false, 6, (Object) null);
        if (iIndexOf$default == -1) {
            throw new IOException(Intrinsics.stringPlus("unexpected journal line: ", str));
        }
        int i2 = iIndexOf$default + 1;
        int iIndexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) str, ' ', i2, false, 4, (Object) null);
        if (iIndexOf$default2 == -1) {
            strSubstring = str.substring(i2);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String).substring(startIndex)");
            String str2 = k;
            if (iIndexOf$default == str2.length() && StringsKt__StringsJVMKt.startsWith$default(str, str2, false, 2, null)) {
                this.w.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i2, iIndexOf$default2);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        }
        c cVar = this.w.get(strSubstring);
        if (cVar == null) {
            cVar = new c(this, strSubstring);
            this.w.put(strSubstring, cVar);
        }
        if (iIndexOf$default2 != -1) {
            String str3 = i;
            if (iIndexOf$default == str3.length() && StringsKt__StringsJVMKt.startsWith$default(str, str3, false, 2, null)) {
                String strSubstring2 = str.substring(iIndexOf$default2 + 1);
                Intrinsics.checkNotNullExpressionValue(strSubstring2, "this as java.lang.String).substring(startIndex)");
                List<String> listSplit$default = StringsKt__StringsKt.split$default((CharSequence) strSubstring2, new char[]{' '}, false, 0, 6, (Object) null);
                cVar.o(true);
                cVar.l(null);
                cVar.m(listSplit$default);
                return;
            }
        }
        if (iIndexOf$default2 == -1) {
            String str4 = j;
            if (iIndexOf$default == str4.length() && StringsKt__StringsJVMKt.startsWith$default(str, str4, false, 2, null)) {
                cVar.l(new b(this, cVar));
                return;
            }
        }
        if (iIndexOf$default2 == -1) {
            String str5 = l;
            if (iIndexOf$default == str5.length() && StringsKt__StringsJVMKt.startsWith$default(str, str5, false, 2, null)) {
                return;
            }
        }
        throw new IOException(Intrinsics.stringPlus("unexpected journal line: ", str));
    }

    public final void J() throws IOException {
        while (this.u > this.q) {
            if (!I()) {
                return;
            }
        }
        this.C = false;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        b bVarB;
        if (this.A && !this.B) {
            Collection<c> collectionValues = this.w.values();
            Intrinsics.checkNotNullExpressionValue(collectionValues, "lruEntries.values");
            int i2 = 0;
            Object[] array = collectionValues.toArray(new c[0]);
            if (array == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            }
            c[] cVarArr = (c[]) array;
            int length = cVarArr.length;
            while (i2 < length) {
                c cVar = cVarArr[i2];
                i2++;
                if (cVar.b() != null && (bVarB = cVar.b()) != null) {
                    bVarB.c();
                }
            }
            J();
            okio.d dVar = this.v;
            Intrinsics.checkNotNull(dVar);
            dVar.close();
            this.v = null;
            this.B = true;
            return;
        }
        this.B = true;
    }

    public final synchronized void e(b editor, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(editor, "editor");
        c cVarD = editor.d();
        if (!Intrinsics.areEqual(cVarD.b(), editor)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        int i2 = 0;
        if (z && !cVarD.g()) {
            int i3 = this.p;
            int i4 = 0;
            while (i4 < i3) {
                int i5 = i4 + 1;
                boolean[] zArrE = editor.e();
                Intrinsics.checkNotNull(zArrE);
                if (!zArrE[i4]) {
                    editor.a();
                    throw new IllegalStateException(Intrinsics.stringPlus("Newly created entry didn't create value for index ", Integer.valueOf(i4)));
                }
                if (!this.m.exists(cVarD.c().get(i4))) {
                    editor.a();
                    return;
                }
                i4 = i5;
            }
        }
        int i6 = this.p;
        while (i2 < i6) {
            int i7 = i2 + 1;
            File file = cVarD.c().get(i2);
            if (!z || cVarD.i()) {
                this.m.delete(file);
            } else if (this.m.exists(file)) {
                File file2 = cVarD.a().get(i2);
                this.m.rename(file, file2);
                long j2 = cVarD.e()[i2];
                long size = this.m.size(file2);
                cVarD.e()[i2] = size;
                this.u = (this.u - j2) + size;
            }
            i2 = i7;
        }
        cVarD.l(null);
        if (cVarD.i()) {
            x(cVarD);
            return;
        }
        this.x++;
        okio.d dVar = this.v;
        Intrinsics.checkNotNull(dVar);
        if (cVarD.g() || z) {
            cVarD.o(true);
            dVar.writeUtf8(i).writeByte(32);
            dVar.writeUtf8(cVarD.d());
            cVarD.s(dVar);
            dVar.writeByte(10);
            if (z) {
                long j3 = this.E;
                this.E = 1 + j3;
                cVarD.p(j3);
            }
        } else {
            m().remove(cVarD.d());
            dVar.writeUtf8(k).writeByte(32);
            dVar.writeUtf8(cVarD.d());
            dVar.writeByte(10);
        }
        dVar.flush();
        if (this.u > this.q || q()) {
            TaskQueue.schedule$default(this.F, this.G, 0L, 2, null);
        }
    }

    public final void f() throws IOException {
        close();
        this.m.deleteContents(this.n);
    }

    @Override // java.io.Flushable
    public synchronized void flush() throws IOException {
        if (this.A) {
            d();
            J();
            okio.d dVar = this.v;
            Intrinsics.checkNotNull(dVar);
            dVar.flush();
        }
    }

    public final synchronized b g(String key, long j2) throws IOException {
        Intrinsics.checkNotNullParameter(key, "key");
        p();
        d();
        K(key);
        c cVar = this.w.get(key);
        if (j2 != f10641g && (cVar == null || cVar.h() != j2)) {
            return null;
        }
        if ((cVar == null ? null : cVar.b()) != null) {
            return null;
        }
        if (cVar != null && cVar.f() != 0) {
            return null;
        }
        if (!this.C && !this.D) {
            okio.d dVar = this.v;
            Intrinsics.checkNotNull(dVar);
            dVar.writeUtf8(j).writeByte(32).writeUtf8(key).writeByte(10);
            dVar.flush();
            if (this.y) {
                return null;
            }
            if (cVar == null) {
                cVar = new c(this, key);
                this.w.put(key, cVar);
            }
            b bVar = new b(this, cVar);
            cVar.l(bVar);
            return bVar;
        }
        TaskQueue.schedule$default(this.F, this.G, 0L, 2, null);
        return null;
    }

    public final synchronized d i(String key) throws IOException {
        Intrinsics.checkNotNullParameter(key, "key");
        p();
        d();
        K(key);
        c cVar = this.w.get(key);
        if (cVar == null) {
            return null;
        }
        d dVarR = cVar.r();
        if (dVarR == null) {
            return null;
        }
        this.x++;
        okio.d dVar = this.v;
        Intrinsics.checkNotNull(dVar);
        dVar.writeUtf8(l).writeByte(32).writeUtf8(key).writeByte(10);
        if (q()) {
            TaskQueue.schedule$default(this.F, this.G, 0L, 2, null);
        }
        return dVarR;
    }

    public final boolean j() {
        return this.B;
    }

    public final File k() {
        return this.n;
    }

    public final FileSystem l() {
        return this.m;
    }

    public final LinkedHashMap<String, c> m() {
        return this.w;
    }

    public final int o() {
        return this.p;
    }

    public final synchronized void p() throws IOException {
        if (Util.h && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + this);
        }
        if (this.A) {
            return;
        }
        if (this.m.exists(this.t)) {
            if (this.m.exists(this.r)) {
                this.m.delete(this.t);
            } else {
                this.m.rename(this.t, this.r);
            }
        }
        this.z = Util.isCivilized(this.m, this.t);
        if (this.m.exists(this.r)) {
            try {
                t();
                s();
                this.A = true;
                return;
            } catch (IOException e2) {
                Platform.a.f().j("DiskLruCache " + this.n + " is corrupt: " + ((Object) e2.getMessage()) + ", removing", 5, e2);
                try {
                    f();
                    this.B = false;
                    v();
                    this.A = true;
                } catch (Throwable th) {
                    this.B = false;
                    throw th;
                }
            }
        }
        v();
        this.A = true;
    }

    public final synchronized void v() throws IOException {
        okio.d dVar = this.v;
        if (dVar != null) {
            dVar.close();
        }
        okio.d dVarBuffer = Okio.buffer(this.m.sink(this.s));
        try {
            dVarBuffer.writeUtf8(f10639e).writeByte(10);
            dVarBuffer.writeUtf8(f10640f).writeByte(10);
            dVarBuffer.writeDecimalLong(this.o).writeByte(10);
            dVarBuffer.writeDecimalLong(o()).writeByte(10);
            dVarBuffer.writeByte(10);
            for (c cVar : m().values()) {
                if (cVar.b() != null) {
                    dVarBuffer.writeUtf8(j).writeByte(32);
                    dVarBuffer.writeUtf8(cVar.d());
                    dVarBuffer.writeByte(10);
                } else {
                    dVarBuffer.writeUtf8(i).writeByte(32);
                    dVarBuffer.writeUtf8(cVar.d());
                    cVar.s(dVarBuffer);
                    dVarBuffer.writeByte(10);
                }
            }
            v vVar = v.a;
            CloseableKt.closeFinally(dVarBuffer, null);
            if (this.m.exists(this.r)) {
                this.m.rename(this.r, this.t);
            }
            this.m.rename(this.s, this.r);
            this.m.delete(this.t);
            this.v = r();
            this.y = false;
            this.D = false;
        } finally {
        }
    }

    public final synchronized boolean w(String key) throws IOException {
        Intrinsics.checkNotNullParameter(key, "key");
        p();
        d();
        K(key);
        c cVar = this.w.get(key);
        if (cVar == null) {
            return false;
        }
        boolean zX = x(cVar);
        if (zX && this.u <= this.q) {
            this.C = false;
        }
        return zX;
    }

    public final boolean x(c entry) throws IOException {
        okio.d dVar;
        Intrinsics.checkNotNullParameter(entry, "entry");
        if (!this.z) {
            if (entry.f() > 0 && (dVar = this.v) != null) {
                dVar.writeUtf8(j);
                dVar.writeByte(32);
                dVar.writeUtf8(entry.d());
                dVar.writeByte(10);
                dVar.flush();
            }
            if (entry.f() > 0 || entry.b() != null) {
                entry.q(true);
                return true;
            }
        }
        b bVarB = entry.b();
        if (bVarB != null) {
            bVarB.c();
        }
        int i2 = this.p;
        for (int i3 = 0; i3 < i2; i3++) {
            this.m.delete(entry.a().get(i3));
            this.u -= entry.e()[i3];
            entry.e()[i3] = 0;
        }
        this.x++;
        okio.d dVar2 = this.v;
        if (dVar2 != null) {
            dVar2.writeUtf8(k);
            dVar2.writeByte(32);
            dVar2.writeUtf8(entry.d());
            dVar2.writeByte(10);
        }
        this.w.remove(entry.d());
        if (q()) {
            TaskQueue.schedule$default(this.F, this.G, 0L, 2, null);
        }
        return true;
    }
}
