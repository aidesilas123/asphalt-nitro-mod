###### Class com.hyprmx.android.sdk.utility.l (com.hyprmx.android.sdk.utility.l)
.class public final Lcom/hyprmx/android/sdk/utility/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyprmx/android/sdk/utility/l$d;,
        Lcom/hyprmx/android/sdk/utility/l$c;,
        Lcom/hyprmx/android/sdk/utility/l$e;
    }
.end annotation


# static fields
.field public static final p:Ljava/util/regex/Pattern;

.field public static final q:Lcom/hyprmx/android/sdk/utility/l$a;


# instance fields
.field public final a:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final b:Ljava/io/File;

.field public final c:Ljava/io/File;

.field public final d:Ljava/io/File;

.field public final e:Ljava/io/File;

.field public final f:I

.field public final g:I

.field public final h:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/hyprmx/android/sdk/utility/l$d;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Z

.field public final j:J

.field public k:J

.field public l:Ljava/io/BufferedWriter;

.field public m:I

.field public final n:Lcom/hyprmx/android/sdk/utility/l$b;

.field public o:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/hyprmx/android/sdk/utility/l;->p:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/hyprmx/android/sdk/utility/l$a;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/utility/l$a;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/utility/l;->q:Lcom/hyprmx/android/sdk/utility/l$a;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v7, p0, Lcom/hyprmx/android/sdk/utility/l;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->h:Ljava/util/LinkedHashMap;

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/hyprmx/android/sdk/utility/l;->k:J

    new-instance v0, Lcom/hyprmx/android/sdk/utility/l$b;

    invoke-direct {v0, p0}, Lcom/hyprmx/android/sdk/utility/l$b;-><init>(Lcom/hyprmx/android/sdk/utility/l;)V

    iput-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->n:Lcom/hyprmx/android/sdk/utility/l$b;

    iput-wide v4, p0, Lcom/hyprmx/android/sdk/utility/l;->o:J

    iput-object p1, p0, Lcom/hyprmx/android/sdk/utility/l;->b:Ljava/io/File;

    iput v3, p0, Lcom/hyprmx/android/sdk/utility/l;->f:I

    new-instance v0, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->c:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v2, "journal.tmp"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->d:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v2, "journal.bkp"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->e:Ljava/io/File;

    iput v3, p0, Lcom/hyprmx/android/sdk/utility/l;->g:I

    iput-wide v4, p0, Lcom/hyprmx/android/sdk/utility/l;->j:J

    iput-boolean v1, p0, Lcom/hyprmx/android/sdk/utility/l;->i:Z

    return-void
.end method

.method public static synthetic a(Lcom/hyprmx/android/sdk/utility/l;)I
    .registers 1

    iget p0, p0, Lcom/hyprmx/android/sdk/utility/l;->g:I

    return p0
.end method

.method public static a(Ljava/io/File;)Lcom/hyprmx/android/sdk/utility/l;
    .registers 6

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2b

    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2b

    :cond_1e
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_2b

    :cond_25
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_2b
    :goto_2b
    new-instance v0, Lcom/hyprmx/android/sdk/utility/l;

    invoke-direct {v0, p0}, Lcom/hyprmx/android/sdk/utility/l;-><init>(Ljava/io/File;)V

    iget-object v1, v0, Lcom/hyprmx/android/sdk/utility/l;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6c

    :try_start_38
    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/utility/l;->e()V

    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/utility/l;->d()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3e} :catch_3f

    return-object v0

    :catch_3f
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DiskLruCache "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", removing"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/utility/l;->close()V

    iget-object v0, v0, Lcom/hyprmx/android/sdk/utility/l;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/u0;->a(Ljava/io/File;)V

    :cond_6c
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Lcom/hyprmx/android/sdk/utility/l;

    invoke-direct {v0, p0}, Lcom/hyprmx/android/sdk/utility/l;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/utility/l;->f()V

    return-object v0
.end method

.method public static a(Lcom/hyprmx/android/sdk/utility/l;Lcom/hyprmx/android/sdk/utility/l$c;Z)V
    .registers 14

    monitor-enter p0

    :try_start_1
    iget-object v0, p1, Lcom/hyprmx/android/sdk/utility/l$c;->a:Lcom/hyprmx/android/sdk/utility/l$d;

    iget-object v1, v0, Lcom/hyprmx/android/sdk/utility/l$d;->d:Lcom/hyprmx/android/sdk/utility/l$c;

    if-ne v1, p1, :cond_121

    const/4 v1, 0x0

    if-eqz p2, :cond_43

    iget-boolean v2, v0, Lcom/hyprmx/android/sdk/utility/l$d;->c:Z

    if-nez v2, :cond_43

    const/4 v2, 0x0

    :goto_f
    iget v3, p0, Lcom/hyprmx/android/sdk/utility/l;->g:I

    if-ge v2, v3, :cond_43

    iget-object v3, p1, Lcom/hyprmx/android/sdk/utility/l$c;->b:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_2c

    invoke-virtual {v0, v2}, Lcom/hyprmx/android/sdk/utility/l$d;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_29

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/utility/l$c;->a()V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_127

    monitor-exit p0

    goto/16 :goto_120

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_2c
    :try_start_2c
    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/utility/l$c;->a()V

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_43
    const/4 p1, 0x0

    :goto_44
    iget v2, p0, Lcom/hyprmx/android/sdk/utility/l;->g:I

    if-ge p1, v2, :cond_84

    invoke-virtual {v0, p1}, Lcom/hyprmx/android/sdk/utility/l$d;->b(I)Ljava/io/File;

    move-result-object v2

    if-eqz p2, :cond_6e

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_81

    invoke-virtual {v0, p1}, Lcom/hyprmx/android/sdk/utility/l$d;->a(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget-object v2, v0, Lcom/hyprmx/android/sdk/utility/l$d;->b:[J

    aget-wide v4, v2, p1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v6, v0, Lcom/hyprmx/android/sdk/utility/l$d;->b:[J

    aput-wide v2, v6, p1

    iget-wide v6, p0, Lcom/hyprmx/android/sdk/utility/l;->k:J

    sub-long/2addr v6, v4

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/hyprmx/android/sdk/utility/l;->k:J

    goto :goto_81

    :cond_6e
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_81

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_7b

    goto :goto_81

    :cond_7b
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_81
    :goto_81
    add-int/lit8 p1, p1, 0x1

    goto :goto_44

    :cond_84
    iget p1, p0, Lcom/hyprmx/android/sdk/utility/l;->m:I

    const/4 v2, 0x1

    add-int/2addr p1, v2

    iput p1, p0, Lcom/hyprmx/android/sdk/utility/l;->m:I

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/hyprmx/android/sdk/utility/l$d;->d:Lcom/hyprmx/android/sdk/utility/l$c;

    iget-boolean p1, v0, Lcom/hyprmx/android/sdk/utility/l$d;->c:Z

    or-int/2addr p1, p2

    const/16 v3, 0xa

    if-eqz p1, :cond_d7

    iput-boolean v2, v0, Lcom/hyprmx/android/sdk/utility/l$d;->c:Z

    iget-object p1, p0, Lcom/hyprmx/android/sdk/utility/l;->l:Ljava/io/BufferedWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CLEAN "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/hyprmx/android/sdk/utility/l$d;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/hyprmx/android/sdk/utility/l$d;->b:[J

    array-length v6, v0

    const/4 v7, 0x0

    :goto_ad
    if-ge v7, v6, :cond_bc

    aget-wide v8, v0, v7

    const/16 v10, 0x20

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_ad

    :cond_bc
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_f6

    iget-wide p1, p0, Lcom/hyprmx/android/sdk/utility/l;->o:J

    const-wide/16 v3, 0x1

    add-long/2addr p1, v3

    iput-wide p1, p0, Lcom/hyprmx/android/sdk/utility/l;->o:J

    goto :goto_f6

    :cond_d7
    iget-object p1, p0, Lcom/hyprmx/android/sdk/utility/l;->h:Ljava/util/LinkedHashMap;

    iget-object p2, v0, Lcom/hyprmx/android/sdk/utility/l$d;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/hyprmx/android/sdk/utility/l;->l:Ljava/io/BufferedWriter;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, "REMOVE "

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/hyprmx/android/sdk/utility/l$d;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_f6
    :goto_f6
    iget-object p1, p0, Lcom/hyprmx/android/sdk/utility/l;->l:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    iget-boolean p1, p0, Lcom/hyprmx/android/sdk/utility/l;->i:Z

    if-eqz p1, :cond_11f

    iget-wide p1, p0, Lcom/hyprmx/android/sdk/utility/l;->k:J

    iget-wide v3, p0, Lcom/hyprmx/android/sdk/utility/l;->j:J

    cmp-long v0, p1, v3

    if-gtz v0, :cond_118

    iget p1, p0, Lcom/hyprmx/android/sdk/utility/l;->m:I

    const/16 p2, 0x7d0

    if-lt p1, p2, :cond_116

    iget-object p2, p0, Lcom/hyprmx/android/sdk/utility/l;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/AbstractMap;->size()I

    move-result p2

    if-lt p1, p2, :cond_116

    const/4 v1, 0x1

    :cond_116
    if-eqz v1, :cond_11f

    :cond_118
    iget-object p1, p0, Lcom/hyprmx/android/sdk/utility/l;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcom/hyprmx/android/sdk/utility/l;->n:Lcom/hyprmx/android/sdk/utility/l$b;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_11f
    .catchall {:try_start_2c .. :try_end_11f} :catchall_127

    :cond_11f
    monitor-exit p0

    :goto_120
    return-void

    :cond_121
    :try_start_121
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_127
    .catchall {:try_start_121 .. :try_end_127} :catchall_127

    :catchall_127
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized close()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->l:Ljava/io/BufferedWriter;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5a

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/l;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyprmx/android/sdk/utility/l$d;

    iget-object v1, v1, Lcom/hyprmx/android/sdk/utility/l$d;->d:Lcom/hyprmx/android/sdk/utility/l$c;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/hyprmx/android/sdk/utility/l$c;->a()V

    goto :goto_16

    :cond_2a
    iget-boolean v0, p0, Lcom/hyprmx/android/sdk/utility/l;->i:Z

    if-eqz v0, :cond_50

    :goto_2e
    iget-wide v0, p0, Lcom/hyprmx/android/sdk/utility/l;->k:J

    iget-wide v2, p0, Lcom/hyprmx/android/sdk/utility/l;->j:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_50

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/hyprmx/android/sdk/utility/l;->l(Ljava/lang/String;)Z

    goto :goto_2e

    :cond_50
    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->l:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->l:Ljava/io/BufferedWriter;
    :try_end_58
    .catchall {:try_start_7 .. :try_end_58} :catchall_5a

    monitor-exit p0

    return-void

    :catchall_5a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .registers 9

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_15

    :cond_f
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyprmx/android/sdk/utility/l$d;

    iget-object v2, v1, Lcom/hyprmx/android/sdk/utility/l$d;->d:Lcom/hyprmx/android/sdk/utility/l$c;

    const/4 v3, 0x0

    if-nez v2, :cond_40

    :goto_30
    iget v2, p0, Lcom/hyprmx/android/sdk/utility/l;->g:I

    if-ge v3, v2, :cond_1f

    iget-wide v4, p0, Lcom/hyprmx/android/sdk/utility/l;->k:J

    iget-object v2, v1, Lcom/hyprmx/android/sdk/utility/l$d;->b:[J

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/hyprmx/android/sdk/utility/l;->k:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_40
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/hyprmx/android/sdk/utility/l$d;->d:Lcom/hyprmx/android/sdk/utility/l$c;

    :goto_43
    iget v2, p0, Lcom/hyprmx/android/sdk/utility/l;->g:I

    if-ge v3, v2, :cond_78

    invoke-virtual {v1, v3}, Lcom/hyprmx/android/sdk/utility/l$d;->a(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_58

    goto :goto_5e

    :cond_58
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_5e
    :goto_5e
    invoke-virtual {v1, v3}, Lcom/hyprmx/android/sdk/utility/l$d;->b(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_75

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_6f

    goto :goto_75

    :cond_6f
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_75
    :goto_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    :cond_78
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1f

    :cond_7c
    return-void
.end method

.method public final e()V
    .registers 10

    const-string v0, ", "

    const-string v1, "unexpected journal header: ["

    new-instance v2, Lcom/hyprmx/android/sdk/utility/q0;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/hyprmx/android/sdk/utility/l;->c:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v4, Lcom/hyprmx/android/sdk/utility/u0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Lcom/hyprmx/android/sdk/utility/q0;-><init>(Ljava/io/FileInputStream;Ljava/nio/charset/Charset;)V

    :try_start_12
    invoke-virtual {v2}, Lcom/hyprmx/android/sdk/utility/q0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/hyprmx/android/sdk/utility/q0;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/hyprmx/android/sdk/utility/q0;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/hyprmx/android/sdk/utility/q0;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/hyprmx/android/sdk/utility/q0;->d()Ljava/lang/String;

    move-result-object v7

    const-string v8, "libcore.io.DiskLruCache"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_93

    const-string v8, "1"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_93

    iget v8, p0, Lcom/hyprmx/android/sdk/utility/l;->f:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_93

    iget v5, p0, Lcom/hyprmx/android/sdk/utility/l;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_93

    const-string v5, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_54
    .catchall {:try_start_12 .. :try_end_54} :catchall_bc

    if-eqz v5, :cond_93

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_58
    :try_start_58
    invoke-virtual {v2}, Lcom/hyprmx/android/sdk/utility/q0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/hyprmx/android/sdk/utility/l;->k(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/io/EOFException; {:try_start_58 .. :try_end_5f} :catch_62
    .catchall {:try_start_58 .. :try_end_5f} :catchall_bc

    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    :catch_62
    :try_start_62
    iget-object v3, p0, Lcom/hyprmx/android/sdk/utility/l;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/AbstractMap;->size()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/hyprmx/android/sdk/utility/l;->m:I

    iget v1, v2, Lcom/hyprmx/android/sdk/utility/q0;->e:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v1, v3, :cond_72

    const/4 v0, 0x1

    :cond_72
    if-eqz v0, :cond_78

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/utility/l;->f()V

    goto :goto_8d

    :cond_78
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/hyprmx/android/sdk/utility/l;->c:Ljava/io/File;

    invoke-direct {v3, v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/hyprmx/android/sdk/utility/u0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->l:Ljava/io/BufferedWriter;
    :try_end_8d
    .catchall {:try_start_62 .. :try_end_8d} :catchall_bc

    :goto_8d
    :try_start_8d
    invoke-virtual {v2}, Lcom/hyprmx/android/sdk/utility/q0;->close()V
    :try_end_90
    .catch Ljava/lang/RuntimeException; {:try_start_8d .. :try_end_90} :catch_91
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_90} :catch_90

    :catch_90
    return-void

    :catch_91
    move-exception v0

    throw v0

    :cond_93
    :try_start_93
    new-instance v5, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_bc
    .catchall {:try_start_93 .. :try_end_bc} :catchall_bc

    :catchall_bc
    move-exception v0

    :try_start_bd
    invoke-virtual {v2}, Lcom/hyprmx/android/sdk/utility/q0;->close()V
    :try_end_c0
    .catch Ljava/lang/RuntimeException; {:try_start_bd .. :try_end_c0} :catch_c1
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c0} :catch_c0

    :catch_c0
    throw v0

    :catch_c1
    move-exception v0

    throw v0
.end method

.method public final declared-synchronized f()V
    .registers 12

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->l:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    :cond_8
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/hyprmx/android/sdk/utility/l;->d:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/hyprmx/android/sdk/utility/u0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_119

    :try_start_1b
    const-string v1, "libcore.io.DiskLruCache"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v1, p0, Lcom/hyprmx/android/sdk/utility/l;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v1, p0, Lcom/hyprmx/android/sdk/utility/l;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/l;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyprmx/android/sdk/utility/l$d;

    iget-object v3, v2, Lcom/hyprmx/android/sdk/utility/l$d;->d:Lcom/hyprmx/android/sdk/utility/l$c;

    const/16 v4, 0xa

    if-eqz v3, :cond_7f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIRTY "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/hyprmx/android/sdk/utility/l$d;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b0

    :cond_7f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLEAN "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/hyprmx/android/sdk/utility/l$d;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/hyprmx/android/sdk/utility/l$d;->b:[J

    array-length v6, v2

    const/4 v7, 0x0

    :goto_97
    if-ge v7, v6, :cond_a6

    aget-wide v8, v2, v7

    const/16 v10, 0x20

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_97

    :cond_a6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_b0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_b7
    .catchall {:try_start_1b .. :try_end_b7} :catchall_114

    goto :goto_5a

    :cond_b8
    :try_start_b8
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e7

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->c:Ljava/io/File;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/l;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_da

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_d4

    goto :goto_da

    :cond_d4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_da
    :goto_da
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_e1

    goto :goto_e7

    :cond_e1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_e7
    :goto_e7
    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/l;->c:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_10e

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/hyprmx/android/sdk/utility/l;->c:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Lcom/hyprmx/android/sdk/utility/u0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->l:Ljava/io/BufferedWriter;
    :try_end_10c
    .catchall {:try_start_b8 .. :try_end_10c} :catchall_119

    monitor-exit p0

    return-void

    :cond_10e
    :try_start_10e
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :catchall_114
    move-exception v1

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    throw v1
    :try_end_119
    .catchall {:try_start_10e .. :try_end_119} :catchall_119

    :catchall_119
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final i(Ljava/lang/String;)Lcom/hyprmx/android/sdk/utility/l$c;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->l:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_6d

    sget-object v0, Lcom/hyprmx/android/sdk/utility/l;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyprmx/android/sdk/utility/l$d;

    if-nez v0, :cond_26

    new-instance v0, Lcom/hyprmx/android/sdk/utility/l$d;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/utility/l$d;-><init>(Lcom/hyprmx/android/sdk/utility/l;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/l;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    :cond_26
    iget-object v1, v0, Lcom/hyprmx/android/sdk/utility/l$d;->d:Lcom/hyprmx/android/sdk/utility/l$c;
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_75

    if-eqz v1, :cond_2d

    const/4 p1, 0x0

    monitor-exit p0

    goto :goto_53

    :cond_2d
    :goto_2d
    :try_start_2d
    new-instance v1, Lcom/hyprmx/android/sdk/utility/l$c;

    invoke-direct {v1, p0, v0}, Lcom/hyprmx/android/sdk/utility/l$c;-><init>(Lcom/hyprmx/android/sdk/utility/l;Lcom/hyprmx/android/sdk/utility/l$d;)V

    iput-object v1, v0, Lcom/hyprmx/android/sdk/utility/l$d;->d:Lcom/hyprmx/android/sdk/utility/l$c;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->l:Ljava/io/BufferedWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DIRTY "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/utility/l;->l:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_51
    .catchall {:try_start_2d .. :try_end_51} :catchall_75

    monitor-exit p0

    move-object p1, v1

    :goto_53
    return-object p1

    :cond_54
    :try_start_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cache is closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_75
    .catchall {:try_start_54 .. :try_end_75} :catchall_75

    :catchall_75
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized j(Ljava/lang/String;)Lcom/hyprmx/android/sdk/utility/l$e;
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->l:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_a8

    sget-object v0, Lcom/hyprmx/android/sdk/utility/l;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyprmx/android/sdk/utility/l$d;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_b0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    monitor-exit p0

    return-object v1

    :cond_1e
    :try_start_1e
    iget-boolean v2, v0, Lcom/hyprmx/android/sdk/utility/l$d;->c:Z
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_b0

    if-nez v2, :cond_24

    monitor-exit p0

    return-object v1

    :cond_24
    :try_start_24
    iget v2, p0, Lcom/hyprmx/android/sdk/utility/l;->g:I

    new-array v2, v2, [Ljava/io/InputStream;
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_b0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2a
    :try_start_2a
    iget v5, p0, Lcom/hyprmx/android/sdk/utility/l;->g:I

    if-ge v4, v5, :cond_3c

    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v0, v4}, Lcom/hyprmx/android/sdk/utility/l$d;->a(I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v5, v2, v4
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_39} :catch_7b
    .catchall {:try_start_2a .. :try_end_39} :catchall_b0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :cond_3c
    :try_start_3c
    iget v1, p0, Lcom/hyprmx/android/sdk/utility/l;->m:I

    const/4 v4, 0x1

    add-int/2addr v1, v4

    iput v1, p0, Lcom/hyprmx/android/sdk/utility/l;->m:I

    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/l;->l:Ljava/io/BufferedWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "READ "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget p1, p0, Lcom/hyprmx/android/sdk/utility/l;->m:I

    const/16 v1, 0x7d0

    if-lt p1, v1, :cond_69

    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/l;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    if-lt p1, v1, :cond_69

    const/4 v3, 0x1

    :cond_69
    if-eqz v3, :cond_72

    iget-object p1, p0, Lcom/hyprmx/android/sdk/utility/l;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/l;->n:Lcom/hyprmx/android/sdk/utility/l$b;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_72
    new-instance p1, Lcom/hyprmx/android/sdk/utility/l$e;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/utility/l$d;->b:[J

    invoke-direct {p1, v2, v0}, Lcom/hyprmx/android/sdk/utility/l$e;-><init>([Ljava/io/InputStream;[J)V
    :try_end_79
    .catchall {:try_start_3c .. :try_end_79} :catchall_b0

    monitor-exit p0

    return-object p1

    :catch_7b
    :goto_7b
    :try_start_7b
    iget p1, p0, Lcom/hyprmx/android/sdk/utility/l;->g:I

    if-ge v3, p1, :cond_8d

    aget-object p1, v2, v3

    if-eqz p1, :cond_8d

    sget-object v0, Lcom/hyprmx/android/sdk/utility/u0;->a:Ljava/nio/charset/Charset;
    :try_end_85
    .catchall {:try_start_7b .. :try_end_85} :catchall_b0

    :try_start_85
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_88
    .catch Ljava/lang/RuntimeException; {:try_start_85 .. :try_end_88} :catch_8b
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_b0

    :catch_88
    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    :catch_8b
    move-exception p1

    :try_start_8c
    throw p1
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_b0

    :cond_8d
    monitor-exit p0

    return-object v1

    :cond_8f
    :try_start_8f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cache is closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_b0
    .catchall {:try_start_8f .. :try_end_b0} :catchall_b0

    :catchall_b0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final k(Ljava/lang/String;)V
    .registers 9

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_ce

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v3, :cond_28

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    if-ne v1, v5, :cond_2c

    const-string v5, "REMOVE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    iget-object p1, p0, Lcom/hyprmx/android/sdk/utility/l;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_28
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_2c
    iget-object v5, p0, Lcom/hyprmx/android/sdk/utility/l;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hyprmx/android/sdk/utility/l$d;

    if-nez v5, :cond_40

    new-instance v5, Lcom/hyprmx/android/sdk/utility/l$d;

    invoke-direct {v5, p0, v4}, Lcom/hyprmx/android/sdk/utility/l$d;-><init>(Lcom/hyprmx/android/sdk/utility/l;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/hyprmx/android/sdk/utility/l;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    const/4 v4, 0x5

    if-eq v0, v3, :cond_a2

    if-ne v1, v4, :cond_a2

    const-string v6, "CLEAN"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-boolean v1, v5, Lcom/hyprmx/android/sdk/utility/l$d;->c:Z

    const/4 v0, 0x0

    iput-object v0, v5, Lcom/hyprmx/android/sdk/utility/l$d;->d:Lcom/hyprmx/android/sdk/utility/l$c;

    array-length v0, p1

    iget-object v1, v5, Lcom/hyprmx/android/sdk/utility/l$d;->e:Lcom/hyprmx/android/sdk/utility/l;

    iget v1, v1, Lcom/hyprmx/android/sdk/utility/l;->g:I

    if-ne v0, v1, :cond_8c

    const/4 v0, 0x0

    :goto_66
    :try_start_66
    array-length v1, p1

    if-ge v0, v1, :cond_c3

    iget-object v1, v5, Lcom/hyprmx/android/sdk/utility/l$d;->b:[J

    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v1, v0
    :try_end_73
    .catch Ljava/lang/NumberFormatException; {:try_start_66 .. :try_end_73} :catch_76

    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    :catch_76
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a2
    if-ne v0, v3, :cond_b6

    if-ne v1, v4, :cond_b6

    const-string v4, "DIRTY"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b6

    new-instance p1, Lcom/hyprmx/android/sdk/utility/l$c;

    invoke-direct {p1, p0, v5}, Lcom/hyprmx/android/sdk/utility/l$c;-><init>(Lcom/hyprmx/android/sdk/utility/l;Lcom/hyprmx/android/sdk/utility/l$d;)V

    iput-object p1, v5, Lcom/hyprmx/android/sdk/utility/l$d;->d:Lcom/hyprmx/android/sdk/utility/l$c;

    goto :goto_c3

    :cond_b6
    if-ne v0, v3, :cond_c4

    const/4 v0, 0x4

    if-ne v1, v0, :cond_c4

    const-string v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c4

    :cond_c3
    :goto_c3
    return-void

    :cond_c4
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ce
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized l(Ljava/lang/String;)Z
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->l:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_b4

    sget-object v0, Lcom/hyprmx/android/sdk/utility/l;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyprmx/android/sdk/utility/l$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_99

    iget-object v2, v0, Lcom/hyprmx/android/sdk/utility/l$d;->d:Lcom/hyprmx/android/sdk/utility/l$c;

    if-eqz v2, :cond_22

    goto/16 :goto_99

    :cond_22
    const/4 v2, 0x0

    :goto_23
    iget v3, p0, Lcom/hyprmx/android/sdk/utility/l;->g:I

    if-ge v2, v3, :cond_5c

    invoke-virtual {v0, v2}, Lcom/hyprmx/android/sdk/utility/l$d;->a(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_38

    goto :goto_4c

    :cond_38
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to delete "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4c
    :goto_4c
    iget-wide v3, p0, Lcom/hyprmx/android/sdk/utility/l;->k:J

    iget-object v5, v0, Lcom/hyprmx/android/sdk/utility/l$d;->b:[J

    aget-wide v6, v5, v2

    sub-long/2addr v3, v6

    iput-wide v3, p0, Lcom/hyprmx/android/sdk/utility/l;->k:J

    const-wide/16 v3, 0x0

    aput-wide v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_5c
    iget v0, p0, Lcom/hyprmx/android/sdk/utility/l;->m:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/hyprmx/android/sdk/utility/l;->m:I

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->l:Ljava/io/BufferedWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "REMOVE "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/hyprmx/android/sdk/utility/l;->m:I

    const/16 v0, 0x7d0

    if-lt p1, v0, :cond_8e

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    if-lt p1, v0, :cond_8e

    const/4 v1, 0x1

    :cond_8e
    if-eqz v1, :cond_97

    iget-object p1, p0, Lcom/hyprmx/android/sdk/utility/l;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/l;->n:Lcom/hyprmx/android/sdk/utility/l$b;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_97
    .catchall {:try_start_1 .. :try_end_97} :catchall_bc

    :cond_97
    monitor-exit p0

    return v2

    :cond_99
    :goto_99
    monitor-exit p0

    return v1

    :cond_9b
    :try_start_9b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cache is closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_bc
    .catchall {:try_start_9b .. :try_end_bc} :catchall_bc

    :catchall_bc
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.hyprmx.android.sdk.utility.l.a (com.hyprmx.android.sdk.utility.l$a)
.class public final Lcom/hyprmx/android/sdk/utility/l$a;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/utility/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(I)V
    .registers 2

    return-void
.end method

###### Class com.hyprmx.android.sdk.utility.l.b (com.hyprmx.android.sdk.utility.l$b)
.class public final Lcom/hyprmx/android/sdk/utility/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/utility/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/utility/l;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/utility/l;)V
    .registers 2

    iput-object p1, p0, Lcom/hyprmx/android/sdk/utility/l$b;->a:Lcom/hyprmx/android/sdk/utility/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/l$b;->a:Lcom/hyprmx/android/sdk/utility/l;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/l$b;->a:Lcom/hyprmx/android/sdk/utility/l;

    iget-object v2, v1, Lcom/hyprmx/android/sdk/utility/l;->l:Ljava/io/BufferedWriter;

    if-nez v2, :cond_a

    goto :goto_4f

    :cond_a
    iget-boolean v2, v1, Lcom/hyprmx/android/sdk/utility/l;->i:Z

    if-eqz v2, :cond_30

    :goto_e
    iget-wide v2, v1, Lcom/hyprmx/android/sdk/utility/l;->k:J

    iget-wide v4, v1, Lcom/hyprmx/android/sdk/utility/l;->j:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_30

    iget-object v2, v1, Lcom/hyprmx/android/sdk/utility/l;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hyprmx/android/sdk/utility/l;->l(Ljava/lang/String;)Z

    goto :goto_e

    :cond_30
    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/l$b;->a:Lcom/hyprmx/android/sdk/utility/l;

    iget v2, v1, Lcom/hyprmx/android/sdk/utility/l;->m:I

    const/16 v3, 0x7d0

    const/4 v4, 0x0

    if-lt v2, v3, :cond_43

    iget-object v1, v1, Lcom/hyprmx/android/sdk/utility/l;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    if-lt v2, v1, :cond_43

    const/4 v1, 0x1

    goto :goto_44

    :cond_43
    const/4 v1, 0x0

    :goto_44
    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/l$b;->a:Lcom/hyprmx/android/sdk/utility/l;

    invoke-virtual {v1}, Lcom/hyprmx/android/sdk/utility/l;->f()V

    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/l$b;->a:Lcom/hyprmx/android/sdk/utility/l;

    iput v4, v1, Lcom/hyprmx/android/sdk/utility/l;->m:I

    :cond_4f
    :goto_4f
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_52

    throw v1
.end method

###### Class com.hyprmx.android.sdk.utility.l.c (com.hyprmx.android.sdk.utility.l$c)
.class public final Lcom/hyprmx/android/sdk/utility/l$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/utility/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyprmx/android/sdk/utility/l$c$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/hyprmx/android/sdk/utility/l$d;

.field public final b:[Z

.field public c:Z

.field public final synthetic d:Lcom/hyprmx/android/sdk/utility/l;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/utility/l;Lcom/hyprmx/android/sdk/utility/l$d;)V
    .registers 3

    iput-object p1, p0, Lcom/hyprmx/android/sdk/utility/l$c;->d:Lcom/hyprmx/android/sdk/utility/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/hyprmx/android/sdk/utility/l$c;->a:Lcom/hyprmx/android/sdk/utility/l$d;

    invoke-static {p2}, Lcom/hyprmx/android/sdk/utility/l$d;->a(Lcom/hyprmx/android/sdk/utility/l$d;)Z

    move-result p2

    if-eqz p2, :cond_f

    const/4 p1, 0x0

    goto :goto_15

    :cond_f
    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/l;->a(Lcom/hyprmx/android/sdk/utility/l;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_15
    iput-object p1, p0, Lcom/hyprmx/android/sdk/utility/l$c;->b:[Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/l$c;->d:Lcom/hyprmx/android/sdk/utility/l;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/hyprmx/android/sdk/utility/l;->a(Lcom/hyprmx/android/sdk/utility/l;Lcom/hyprmx/android/sdk/utility/l$c;Z)V

    return-void
.end method

.method public final b()Ljava/io/OutputStream;
    .registers 6

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/l$c;->d:Lcom/hyprmx/android/sdk/utility/l;

    iget v1, v0, Lcom/hyprmx/android/sdk/utility/l;->g:I

    if-lez v1, :cond_41

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/l$c;->a:Lcom/hyprmx/android/sdk/utility/l$d;

    iget-object v2, v1, Lcom/hyprmx/android/sdk/utility/l$d;->d:Lcom/hyprmx/android/sdk/utility/l$c;

    if-ne v2, p0, :cond_38

    iget-boolean v2, v1, Lcom/hyprmx/android/sdk/utility/l$d;->c:Z

    const/4 v3, 0x0

    if-nez v2, :cond_17

    iget-object v2, p0, Lcom/hyprmx/android/sdk/utility/l$c;->b:[Z

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    :cond_17
    invoke-virtual {v1, v3}, Lcom/hyprmx/android/sdk/utility/l$d;->b(I)Ljava/io/File;

    move-result-object v1
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_3e

    :try_start_1b
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_20} :catch_21
    .catchall {:try_start_1b .. :try_end_20} :catchall_3e

    goto :goto_2d

    :catch_21
    :try_start_21
    iget-object v2, p0, Lcom/hyprmx/android/sdk/utility/l$c;->d:Lcom/hyprmx/android/sdk/utility/l;

    iget-object v2, v2, Lcom/hyprmx/android/sdk/utility/l;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_3e

    :try_start_28
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_2d} :catch_34
    .catchall {:try_start_28 .. :try_end_2d} :catchall_3e

    :goto_2d
    :try_start_2d
    new-instance v1, Lcom/hyprmx/android/sdk/utility/l$c$a;

    invoke-direct {v1, p0, v2}, Lcom/hyprmx/android/sdk/utility/l$c$a;-><init>(Lcom/hyprmx/android/sdk/utility/l$c;Ljava/io/FileOutputStream;)V

    monitor-exit v0

    return-object v1

    :catch_34
    sget-object v1, Lcom/hyprmx/android/sdk/utility/l;->q:Lcom/hyprmx/android/sdk/utility/l$a;

    monitor-exit v0

    return-object v1

    :cond_38
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_2d .. :try_end_40} :catchall_3e

    throw v1

    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected index 0 to be greater than 0 and less than the maximum value count of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hyprmx/android/sdk/utility/l$c;->d:Lcom/hyprmx/android/sdk/utility/l;

    iget v2, v2, Lcom/hyprmx/android/sdk/utility/l;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.hyprmx.android.sdk.utility.l.c.a (com.hyprmx.android.sdk.utility.l$c$a)
.class public final Lcom/hyprmx/android/sdk/utility/l$c$a;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/utility/l$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/utility/l$c;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/utility/l$c;Ljava/io/FileOutputStream;)V
    .registers 3

    iput-object p1, p0, Lcom/hyprmx/android/sdk/utility/l$c$a;->a:Lcom/hyprmx/android/sdk/utility/l$c;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_b

    :catch_6
    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/l$c$a;->a:Lcom/hyprmx/android/sdk/utility/l$c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/hyprmx/android/sdk/utility/l$c;->c:Z

    :goto_b
    return-void
.end method

.method public final flush()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_b

    :catch_6
    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/l$c$a;->a:Lcom/hyprmx/android/sdk/utility/l$c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/hyprmx/android/sdk/utility/l$c;->c:Z

    :goto_b
    return-void
.end method

.method public final write(I)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_b

    :catch_6
    iget-object p1, p0, Lcom/hyprmx/android/sdk/utility/l$c$a;->a:Lcom/hyprmx/android/sdk/utility/l$c;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/hyprmx/android/sdk/utility/l$c;->c:Z

    :goto_b
    return-void
.end method

.method public final write([BII)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_b

    :catch_6
    iget-object p1, p0, Lcom/hyprmx/android/sdk/utility/l$c$a;->a:Lcom/hyprmx/android/sdk/utility/l$c;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/hyprmx/android/sdk/utility/l$c;->c:Z

    :goto_b
    return-void
.end method

###### Class com.hyprmx.android.sdk.utility.l.d (com.hyprmx.android.sdk.utility.l$d)
.class public final Lcom/hyprmx/android/sdk/utility/l$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/utility/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[J

.field public c:Z

.field public d:Lcom/hyprmx/android/sdk/utility/l$c;

.field public final synthetic e:Lcom/hyprmx/android/sdk/utility/l;


# direct methods
.method public synthetic constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(Lcom/hyprmx/android/sdk/utility/l;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/hyprmx/android/sdk/utility/l$d;->e:Lcom/hyprmx/android/sdk/utility/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/hyprmx/android/sdk/utility/l$d;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/l;->a(Lcom/hyprmx/android/sdk/utility/l;)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/hyprmx/android/sdk/utility/l$d;->b:[J

    return-void
.end method

.method public static synthetic a(Lcom/hyprmx/android/sdk/utility/l$d;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/hyprmx/android/sdk/utility/l$d;->c:Z

    return p0
.end method


# virtual methods
.method public final a(I)Ljava/io/File;
    .registers 6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/l$d;->e:Lcom/hyprmx/android/sdk/utility/l;

    iget-object v1, v1, Lcom/hyprmx/android/sdk/utility/l;->b:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/hyprmx/android/sdk/utility/l$d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b(I)Ljava/io/File;
    .registers 6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/l$d;->e:Lcom/hyprmx/android/sdk/utility/l;

    iget-object v1, v1, Lcom/hyprmx/android/sdk/utility/l;->b:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/hyprmx/android/sdk/utility/l$d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".tmp"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

###### Class com.hyprmx.android.sdk.utility.l.e (com.hyprmx.android.sdk.utility.l$e)
.class public final Lcom/hyprmx/android/sdk/utility/l$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/utility/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final a:[Ljava/io/InputStream;

.field public final b:[J


# direct methods
.method public constructor <init>([Ljava/io/InputStream;[J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/utility/l$e;->a:[Ljava/io/InputStream;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/utility/l$e;->b:[J

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 6

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/l$e;->a:[Ljava/io/InputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_15

    aget-object v3, v0, v2

    sget-object v4, Lcom/hyprmx/android/sdk/utility/u0;->a:Ljava/nio/charset/Charset;

    if-eqz v3, :cond_12

    :try_start_c
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_f} :catch_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_12

    goto :goto_12

    :catch_10
    move-exception v0

    throw v0

    :catch_12
    :cond_12
    :goto_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_15
    return-void
.end method
