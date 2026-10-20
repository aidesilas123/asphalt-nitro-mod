###### Class com.bytedance.sdk.component.d.c.a.a.a (com.bytedance.sdk.component.d.c.a.a.a)
.class public final Lcom/bytedance/sdk/component/d/c/a/a/a;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/d/c/a/a/a$b;,
        Lcom/bytedance/sdk/component/d/c/a/a/a$a;,
        Lcom/bytedance/sdk/component/d/c/a/a/a$c;
    }
.end annotation


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field public static final c:Ljava/io/OutputStream;


# instance fields
.field final b:Ljava/util/concurrent/ExecutorService;

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private final f:Ljava/io/File;

.field private final g:Ljava/io/File;

.field private final h:I

.field private i:J

.field private final j:I

.field private k:J

.field private l:Ljava/io/Writer;

.field private final m:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/d/c/a/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:J

.field private p:J

.field private final q:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/d/c/a/a/a;->a:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/bytedance/sdk/component/d/c/a/a/a$2;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/d/c/a/a/a$2;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/d/c/a/a/a;->c:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJLjava/util/concurrent/ExecutorService;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->k:J

    new-instance v2, Ljava/util/LinkedHashMap;

    const/4 v3, 0x0

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v2, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->m:Ljava/util/LinkedHashMap;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->o:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->p:J

    new-instance v0, Lcom/bytedance/sdk/component/d/c/a/a/a$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/d/c/a/a/a$1;-><init>(Lcom/bytedance/sdk/component/d/c/a/a/a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->q:Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->d:Ljava/io/File;

    iput p2, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->h:I

    new-instance p2, Ljava/io/File;

    const-string v0, "journal"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->e:Ljava/io/File;

    new-instance p2, Ljava/io/File;

    const-string v0, "journal.tmp"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->f:Ljava/io/File;

    new-instance p2, Ljava/io/File;

    const-string v0, "journal.bkp"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->g:Ljava/io/File;

    iput p3, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->j:I

    iput-wide p4, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->i:J

    iput-object p6, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/d/c/a/a/a;I)I
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->n:I

    return p1
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/bytedance/sdk/component/d/c/a/a/a$a;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/c/a/a/a;->g()V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/d/c/a/a/a;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/d/c/a/a/a$b;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_22

    if-eqz v0, :cond_20

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->e(Lcom/bytedance/sdk/component/d/c/a/a/a$b;)J

    move-result-wide v1
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_61

    cmp-long v4, v1, p2

    if-eqz v4, :cond_22

    :cond_20
    monitor-exit p0

    return-object v3

    :cond_22
    if-nez v0, :cond_2f

    :try_start_24
    new-instance v0, Lcom/bytedance/sdk/component/d/c/a/a/a$b;

    invoke-direct {v0, p0, p1, v3}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;-><init>(Lcom/bytedance/sdk/component/d/c/a/a/a;Ljava/lang/String;Lcom/bytedance/sdk/component/d/c/a/a/a$1;)V

    iget-object p2, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    :cond_2f
    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->a(Lcom/bytedance/sdk/component/d/c/a/a/a$b;)Lcom/bytedance/sdk/component/d/c/a/a/a$a;

    move-result-object p2
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_61

    if-eqz p2, :cond_37

    monitor-exit p0

    return-object v3

    :cond_37
    :goto_37
    :try_start_37
    new-instance p2, Lcom/bytedance/sdk/component/d/c/a/a/a$a;

    invoke-direct {p2, p0, v0, v3}, Lcom/bytedance/sdk/component/d/c/a/a/a$a;-><init>(Lcom/bytedance/sdk/component/d/c/a/a/a;Lcom/bytedance/sdk/component/d/c/a/a/a$b;Lcom/bytedance/sdk/component/d/c/a/a/a$1;)V

    invoke-static {v0, p2}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->a(Lcom/bytedance/sdk/component/d/c/a/a/a$b;Lcom/bytedance/sdk/component/d/c/a/a/a$a;)Lcom/bytedance/sdk/component/d/c/a/a/a$a;

    iget-object p3, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->l:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIRTY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->l:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_5f
    .catchall {:try_start_37 .. :try_end_5f} :catchall_61

    monitor-exit p0

    return-object p2

    :catchall_61
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static a(Ljava/io/File;IIJLjava/util/concurrent/ExecutorService;)Lcom/bytedance/sdk/component/d/c/a/a/a;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_84

    if-lez p2, :cond_7c

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2a

    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2a

    :cond_26
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/d/c/a/a/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    :cond_2a
    :goto_2a
    new-instance v0, Lcom/bytedance/sdk/component/d/c/a/a/a;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/bytedance/sdk/component/d/c/a/a/a;-><init>(Ljava/io/File;IIJLjava/util/concurrent/ExecutorService;)V

    iget-object v1, v0, Lcom/bytedance/sdk/component/d/c/a/a/a;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6a

    :try_start_3d
    invoke-direct {v0}, Lcom/bytedance/sdk/component/d/c/a/a/a;->c()V

    invoke-direct {v0}, Lcom/bytedance/sdk/component/d/c/a/a/a;->d()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_43} :catch_44

    return-object v0

    :catch_44
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", removing"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DiskLruCache "

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/c/a/a/a;->b()V

    :cond_6a
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Lcom/bytedance/sdk/component/d/c/a/a/a;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/bytedance/sdk/component/d/c/a/a/a;-><init>(Ljava/io/File;IIJLjava/util/concurrent/ExecutorService;)V

    invoke-direct {v0}, Lcom/bytedance/sdk/component/d/c/a/a/a;->e()V

    return-object v0

    :cond_7c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_84
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/d/c/a/a/a;)Ljava/io/Writer;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->l:Ljava/io/Writer;

    return-object p0
.end method

.method private declared-synchronized a(Lcom/bytedance/sdk/component/d/c/a/a/a$a;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->a(Lcom/bytedance/sdk/component/d/c/a/a/a$a;)Lcom/bytedance/sdk/component/d/c/a/a/a$b;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->a(Lcom/bytedance/sdk/component/d/c/a/a/a$b;)Lcom/bytedance/sdk/component/d/c/a/a/a$a;

    move-result-object v1

    if-ne v1, p1, :cond_10a

    const/4 v1, 0x0

    if-eqz p2, :cond_4d

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->d(Lcom/bytedance/sdk/component/d/c/a/a/a$b;)Z

    move-result v2

    if-nez v2, :cond_4d

    const/4 v2, 0x0

    :goto_15
    iget v3, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->j:I

    if-ge v2, v3, :cond_4d

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->b(Lcom/bytedance/sdk/component/d/c/a/a/a$a;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_33

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_30

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->b()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_110

    monitor-exit p0

    return-void

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_33
    :try_start_33
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->b()V

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4d
    :goto_4d
    iget p1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->j:I

    if-ge v1, p1, :cond_81

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->b(I)Ljava/io/File;

    move-result-object p1

    if-eqz p2, :cond_7b

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->a(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->b(Lcom/bytedance/sdk/component/d/c/a/a/a$b;)[J

    move-result-object p1

    aget-wide v3, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->b(Lcom/bytedance/sdk/component/d/c/a/a/a$b;)[J

    move-result-object p1

    aput-wide v5, p1, v1

    iget-wide v7, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->k:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->k:J

    goto :goto_7e

    :cond_7b
    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/a/a/a;->a(Ljava/io/File;)V

    :cond_7e
    :goto_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    :cond_81
    iget p1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->n:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->n:I

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->a(Lcom/bytedance/sdk/component/d/c/a/a/a$b;Lcom/bytedance/sdk/component/d/c/a/a/a$a;)Lcom/bytedance/sdk/component/d/c/a/a/a$a;

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->d(Lcom/bytedance/sdk/component/d/c/a/a/a$b;)Z

    move-result p1

    or-int/2addr p1, p2

    const/16 v2, 0xa

    if-eqz p1, :cond_c8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->a(Lcom/bytedance/sdk/component/d/c/a/a/a$b;Z)Z

    iget-object p1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->l:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLEAN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->c(Lcom/bytedance/sdk/component/d/c/a/a/a$b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_ee

    iget-wide p1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->p:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->p:J

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->a(Lcom/bytedance/sdk/component/d/c/a/a/a$b;J)J

    goto :goto_ee

    :cond_c8
    iget-object p1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->m:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->c(Lcom/bytedance/sdk/component/d/c/a/a/a$b;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->l:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REMOVE "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->c(Lcom/bytedance/sdk/component/d/c/a/a/a$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_ee
    :goto_ee
    iget-object p1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->l:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    iget-wide p1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->k:J

    iget-wide v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->i:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_101

    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/c/a/a/a;->f()Z

    move-result p1

    if-eqz p1, :cond_108

    :cond_101
    iget-object p1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->b:Ljava/util/concurrent/ExecutorService;

    iget-object p2, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->q:Ljava/util/concurrent/Callable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_108
    .catchall {:try_start_33 .. :try_end_108} :catchall_110

    :cond_108
    monitor-exit p0

    return-void

    :cond_10a
    :try_start_10a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_110
    .catchall {:try_start_10a .. :try_end_110} :catchall_110

    :catchall_110
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/d/c/a/a/a;Lcom/bytedance/sdk/component/d/c/a/a/a$a;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/d/c/a/a/a;->a(Lcom/bytedance/sdk/component/d/c/a/a/a$a;Z)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_13

    :cond_d
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_13
    :goto_13
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_5

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/a/a/a;->a(Ljava/io/File;)V

    :cond_5
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_c

    return-void

    :cond_c
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/component/d/c/a/a/a;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/c/a/a/a;->h()V

    return-void
.end method

.method private c()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    new-instance v1, Lcom/bytedance/sdk/component/d/c/a/a/c;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->e:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/bytedance/sdk/component/d/c/a/a/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/component/d/c/a/a/c;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    :try_start_10
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/c/a/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/c/a/a/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/c/a/a/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/c/a/a/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/c/a/a/c;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8c

    const-string v7, "1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8c

    iget v7, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->h:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    iget v4, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->j:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    const-string v4, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_52
    .catchall {:try_start_10 .. :try_end_52} :catchall_ba

    if-eqz v4, :cond_8c

    const/4 v0, 0x0

    :goto_55
    :try_start_55
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/c/a/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/component/d/c/a/a/a;->d(Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/io/EOFException; {:try_start_55 .. :try_end_5c} :catch_5f
    .catchall {:try_start_55 .. :try_end_5c} :catchall_ba

    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    :catch_5f
    :try_start_5f
    iget-object v2, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->n:I

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/c/a/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/c/a/a/a;->e()V

    goto :goto_88

    :cond_72
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->e:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/bytedance/sdk/component/d/c/a/a/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->l:Ljava/io/Writer;
    :try_end_88
    .catchall {:try_start_5f .. :try_end_88} :catchall_ba

    :goto_88
    invoke-static {v1}, Lcom/bytedance/sdk/component/d/c/c/b;->a(Ljava/io/Closeable;)V

    return-void

    :cond_8c
    :try_start_8c
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal header: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_ba
    .catchall {:try_start_8c .. :try_end_ba} :catchall_ba

    :catchall_ba
    move-exception v0

    invoke-static {v1}, Lcom/bytedance/sdk/component/d/c/c/b;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method static synthetic c(Lcom/bytedance/sdk/component/d/c/a/a/a;)Z
    .registers 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/c/a/a/a;->f()Z

    move-result p0

    return p0
.end method

.method private d()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->f:Ljava/io/File;

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/a/a/a;->a(Ljava/io/File;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/d/c/a/a/a$b;

    invoke-static {v1}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->a(Lcom/bytedance/sdk/component/d/c/a/a/a$b;)Lcom/bytedance/sdk/component/d/c/a/a/a$a;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_34

    :goto_22
    iget v2, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->j:I

    if-ge v3, v2, :cond_f

    iget-wide v4, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->k:J

    invoke-static {v1}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->b(Lcom/bytedance/sdk/component/d/c/a/a/a$b;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->k:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_34
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->a(Lcom/bytedance/sdk/component/d/c/a/a/a$b;Lcom/bytedance/sdk/component/d/c/a/a/a$a;)Lcom/bytedance/sdk/component/d/c/a/a/a$a;

    :goto_38
    iget v2, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->j:I

    if-ge v3, v2, :cond_4d

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->a(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/d/c/a/a/a;->a(Ljava/io/File;)V

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->b(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/d/c/a/a/a;->a(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_4d
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    :cond_51
    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/component/d/c/a/a/a;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/c/a/a/a;->e()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_9c

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

    iget-object p1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_28
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_2c
    iget-object v5, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/component/d/c/a/a/a$b;

    const/4 v6, 0x0

    if-nez v5, :cond_41

    new-instance v5, Lcom/bytedance/sdk/component/d/c/a/a/a$b;

    invoke-direct {v5, p0, v4, v6}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;-><init>(Lcom/bytedance/sdk/component/d/c/a/a/a;Ljava/lang/String;Lcom/bytedance/sdk/component/d/c/a/a/a$1;)V

    iget-object v7, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    const/4 v4, 0x5

    if-eq v0, v3, :cond_64

    if-ne v1, v4, :cond_64

    const-string v7, "CLEAN"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_64

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, v1}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->a(Lcom/bytedance/sdk/component/d/c/a/a/a$b;Z)Z

    invoke-static {v5, v6}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->a(Lcom/bytedance/sdk/component/d/c/a/a/a$b;Lcom/bytedance/sdk/component/d/c/a/a/a$a;)Lcom/bytedance/sdk/component/d/c/a/a/a$a;

    invoke-static {v5, p1}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->a(Lcom/bytedance/sdk/component/d/c/a/a/a$b;[Ljava/lang/String;)V

    goto :goto_86

    :cond_64
    if-ne v0, v3, :cond_79

    if-ne v1, v4, :cond_79

    const-string v4, "DIRTY"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_79

    new-instance p1, Lcom/bytedance/sdk/component/d/c/a/a/a$a;

    invoke-direct {p1, p0, v5, v6}, Lcom/bytedance/sdk/component/d/c/a/a/a$a;-><init>(Lcom/bytedance/sdk/component/d/c/a/a/a;Lcom/bytedance/sdk/component/d/c/a/a/a$b;Lcom/bytedance/sdk/component/d/c/a/a/a$1;)V

    invoke-static {v5, p1}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->a(Lcom/bytedance/sdk/component/d/c/a/a/a$b;Lcom/bytedance/sdk/component/d/c/a/a/a$a;)Lcom/bytedance/sdk/component/d/c/a/a/a$a;

    goto :goto_86

    :cond_79
    if-ne v0, v3, :cond_87

    const/4 v0, 0x4

    if-ne v1, v0, :cond_87

    const-string v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_87

    :goto_86
    return-void

    :cond_87
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic e(Lcom/bytedance/sdk/component/d/c/a/a/a;)I
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->j:I

    return p0
.end method

.method private declared-synchronized e()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->l:Ljava/io/Writer;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    :cond_8
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->f:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/bytedance/sdk/component/d/c/a/a/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_e9

    :try_start_1b
    const-string v1, "libcore.io.DiskLruCache"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ad

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/d/c/a/a/a$b;

    invoke-static {v2}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->a(Lcom/bytedance/sdk/component/d/c/a/a/a$b;)Lcom/bytedance/sdk/component/d/c/a/a/a$a;

    move-result-object v3

    const/16 v4, 0xa

    if-eqz v3, :cond_8a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIRTY "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->c(Lcom/bytedance/sdk/component/d/c/a/a/a$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_5a

    :cond_8a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLEAN "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->c(Lcom/bytedance/sdk/component/d/c/a/a/a$b;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_ac
    .catchall {:try_start_1b .. :try_end_ac} :catchall_e4

    goto :goto_5a

    :cond_ad
    :try_start_ad
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c0

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->e:Ljava/io/File;

    iget-object v2, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->g:Ljava/io/File;

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/component/d/c/a/a/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    :cond_c0
    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->f:Ljava/io/File;

    iget-object v2, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->e:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/component/d/c/a/a/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->e:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v1, Lcom/bytedance/sdk/component/d/c/a/a/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->l:Ljava/io/Writer;
    :try_end_e2
    .catchall {:try_start_ad .. :try_end_e2} :catchall_e9

    monitor-exit p0

    return-void

    :catchall_e4
    move-exception v1

    :try_start_e5
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    throw v1
    :try_end_e9
    .catchall {:try_start_e5 .. :try_end_e9} :catchall_e9

    :catchall_e9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/bytedance/sdk/component/d/c/a/a/a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic f(Lcom/bytedance/sdk/component/d/c/a/a/a;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->d:Ljava/io/File;

    return-object p0
.end method

.method private f()Z
    .registers 3

    iget v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->n:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_10

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private g()V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->l:Ljava/io/Writer;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private h()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->i:J

    iget-wide v2, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->o:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_b

    move-wide v0, v2

    :cond_b
    :goto_b
    iget-wide v2, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->k:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_2b

    iget-object v2, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->m:Ljava/util/LinkedHashMap;

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

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/d/c/a/a/a;->c(Ljava/lang/String;)Z

    goto :goto_b

    :cond_2b
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->o:J

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/c/a/a/a$c;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/c/a/a/a;->g()V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/d/c/a/a/a;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/d/c/a/a/a$b;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_87

    const/4 v1, 0x0

    if-nez v0, :cond_14

    monitor-exit p0

    return-object v1

    :cond_14
    :try_start_14
    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->d(Lcom/bytedance/sdk/component/d/c/a/a/a$b;)Z

    move-result v2
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_87

    if-nez v2, :cond_1c

    monitor-exit p0

    return-object v1

    :cond_1c
    :try_start_1c
    iget v2, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->j:I

    new-array v8, v2, [Ljava/io/InputStream;
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_87

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_22
    :try_start_22
    iget v4, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->j:I

    if-ge v3, v4, :cond_34

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->a(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v4, v8, v3
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_31} :catch_75
    .catchall {:try_start_22 .. :try_end_31} :catchall_87

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_34
    :try_start_34
    iget v1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->n:I

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->l:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "READ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/c/a/a/a;->f()Z

    move-result v1

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->b:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->q:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_62
    new-instance v1, Lcom/bytedance/sdk/component/d/c/a/a/a$c;

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->e(Lcom/bytedance/sdk/component/d/c/a/a/a$b;)J

    move-result-wide v6

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->b(Lcom/bytedance/sdk/component/d/c/a/a/a$b;)[J

    move-result-object v9

    const/4 v10, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lcom/bytedance/sdk/component/d/c/a/a/a$c;-><init>(Lcom/bytedance/sdk/component/d/c/a/a/a;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/bytedance/sdk/component/d/c/a/a/a$1;)V
    :try_end_73
    .catchall {:try_start_34 .. :try_end_73} :catchall_87

    monitor-exit p0

    return-object v1

    :catch_75
    :goto_75
    :try_start_75
    iget p1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->j:I

    if-ge v2, p1, :cond_85

    aget-object p1, v8, v2

    if-eqz p1, :cond_85

    aget-object p1, v8, v2

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c/b;->a(Ljava/io/Closeable;)V
    :try_end_82
    .catchall {:try_start_75 .. :try_end_82} :catchall_87

    add-int/lit8 v2, v2, 0x1

    goto :goto_75

    :cond_85
    monitor-exit p0

    return-object v1

    :catchall_87
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/c/a/a/a;->g()V

    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/c/a/a/a;->h()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->l:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/c/a/a/a$a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/sdk/component/d/c/a/a/a;->a(Ljava/lang/String;J)Lcom/bytedance/sdk/component/d/c/a/a/a$a;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/d/c/a/a/a;->close()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->d:Ljava/io/File;

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/a/a/d;->a(Ljava/io/File;)V

    return-void
.end method

.method public declared-synchronized c(Ljava/lang/String;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/c/a/a/a;->g()V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/d/c/a/a/a;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/d/c/a/a/a$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_91

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->a(Lcom/bytedance/sdk/component/d/c/a/a/a$b;)Lcom/bytedance/sdk/component/d/c/a/a/a$a;

    move-result-object v2

    if-eqz v2, :cond_1a

    goto/16 :goto_91

    :cond_1a
    :goto_1a
    iget v2, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->j:I

    if-ge v1, v2, :cond_5c

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->a(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_46

    :cond_2f
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_46
    :goto_46
    iget-wide v2, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->k:J

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->b(Lcom/bytedance/sdk/component/d/c/a/a/a$b;)[J

    move-result-object v4

    aget-wide v5, v4, v1

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->k:J

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->b(Lcom/bytedance/sdk/component/d/c/a/a/a$b;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_5c
    iget v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->n:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->n:I

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->l:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOVE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/c/a/a/a;->f()Z

    move-result p1

    if-eqz p1, :cond_8f

    iget-object p1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->b:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->q:Ljava/util/concurrent/Callable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_8f
    .catchall {:try_start_1 .. :try_end_8f} :catchall_93

    :cond_8f
    monitor-exit p0

    return v1

    :cond_91
    :goto_91
    monitor-exit p0

    return v1

    :catchall_93
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->l:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3d

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/d/c/a/a/a$b;

    invoke-static {v1}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->a(Lcom/bytedance/sdk/component/d/c/a/a/a$b;)Lcom/bytedance/sdk/component/d/c/a/a/a$a;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-static {v1}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->a(Lcom/bytedance/sdk/component/d/c/a/a/a$b;)Lcom/bytedance/sdk/component/d/c/a/a/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->b()V

    goto :goto_16

    :cond_30
    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/c/a/a/a;->h()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->l:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a;->l:Ljava/io/Writer;
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_3d

    monitor-exit p0

    return-void

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
