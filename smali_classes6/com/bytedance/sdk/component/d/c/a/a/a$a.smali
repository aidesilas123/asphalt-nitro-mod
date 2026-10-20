###### Class com.bytedance.sdk.component.d.c.a.a.a.C0113a (com.bytedance.sdk.component.d.c.a.a.a$a)
.class public final Lcom/bytedance/sdk/component/d/c/a/a/a$a;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/d/c/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/d/c/a/a/a$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/d/c/a/a/a;

.field private final b:Lcom/bytedance/sdk/component/d/c/a/a/a$b;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/d/c/a/a/a;Lcom/bytedance/sdk/component/d/c/a/a/a$b;)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->a:Lcom/bytedance/sdk/component/d/c/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->b:Lcom/bytedance/sdk/component/d/c/a/a/a$b;

    invoke-static {p2}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->d(Lcom/bytedance/sdk/component/d/c/a/a/a$b;)Z

    move-result p2

    if-eqz p2, :cond_f

    const/4 p1, 0x0

    goto :goto_15

    :cond_f
    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/a/a/a;->e(Lcom/bytedance/sdk/component/d/c/a/a/a;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_15
    iput-object p1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->c:[Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/d/c/a/a/a;Lcom/bytedance/sdk/component/d/c/a/a/a$b;Lcom/bytedance/sdk/component/d/c/a/a/a$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/d/c/a/a/a$a;-><init>(Lcom/bytedance/sdk/component/d/c/a/a/a;Lcom/bytedance/sdk/component/d/c/a/a/a$b;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/d/c/a/a/a$a;)Lcom/bytedance/sdk/component/d/c/a/a/a$b;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->b:Lcom/bytedance/sdk/component/d/c/a/a/a$b;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/d/c/a/a/a$a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/component/d/c/a/a/a$a;)[Z
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->c:[Z

    return-object p0
.end method


# virtual methods
.method public a(I)Ljava/io/OutputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_51

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->a:Lcom/bytedance/sdk/component/d/c/a/a/a;

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/a/a/a;->e(Lcom/bytedance/sdk/component/d/c/a/a/a;)I

    move-result v0

    if-ge p1, v0, :cond_51

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->a:Lcom/bytedance/sdk/component/d/c/a/a/a;

    monitor-enter v0

    :try_start_d
    iget-object v1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->b:Lcom/bytedance/sdk/component/d/c/a/a/a$b;

    invoke-static {v1}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->a(Lcom/bytedance/sdk/component/d/c/a/a/a$b;)Lcom/bytedance/sdk/component/d/c/a/a/a$a;

    move-result-object v1

    if-ne v1, p0, :cond_48

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->b:Lcom/bytedance/sdk/component/d/c/a/a/a$b;

    invoke-static {v1}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->d(Lcom/bytedance/sdk/component/d/c/a/a/a$b;)Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->c:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    :cond_22
    iget-object v1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->b:Lcom/bytedance/sdk/component/d/c/a/a/a$b;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->b(I)Ljava/io/File;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_4e

    :try_start_28
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_2d} :catch_2e
    .catchall {:try_start_28 .. :try_end_2d} :catchall_4e

    goto :goto_3c

    :catch_2e
    :try_start_2e
    iget-object v1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->a:Lcom/bytedance/sdk/component/d/c/a/a/a;

    invoke-static {v1}, Lcom/bytedance/sdk/component/d/c/a/a/a;->f(Lcom/bytedance/sdk/component/d/c/a/a/a;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_4e

    :try_start_37
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_3c} :catch_44
    .catchall {:try_start_37 .. :try_end_3c} :catchall_4e

    :goto_3c
    :try_start_3c
    new-instance p1, Lcom/bytedance/sdk/component/d/c/a/a/a$a$a;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2}, Lcom/bytedance/sdk/component/d/c/a/a/a$a$a;-><init>(Lcom/bytedance/sdk/component/d/c/a/a/a$a;Ljava/io/OutputStream;Lcom/bytedance/sdk/component/d/c/a/a/a$1;)V

    monitor-exit v0

    return-object p1

    :catch_44
    sget-object p1, Lcom/bytedance/sdk/component/d/c/a/a/a;->c:Ljava/io/OutputStream;

    monitor-exit v0

    return-object p1

    :cond_48
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_4e
    move-exception p1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3c .. :try_end_50} :catchall_4e

    throw p1

    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to be greater than 0 and less than the maximum value count of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->a:Lcom/bytedance/sdk/component/d/c/a/a/a;

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/a/a/a;->e(Lcom/bytedance/sdk/component/d/c/a/a/a;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->a:Lcom/bytedance/sdk/component/d/c/a/a/a;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lcom/bytedance/sdk/component/d/c/a/a/a;->a(Lcom/bytedance/sdk/component/d/c/a/a/a;Lcom/bytedance/sdk/component/d/c/a/a/a$a;Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->a:Lcom/bytedance/sdk/component/d/c/a/a/a;

    iget-object v2, p0, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->b:Lcom/bytedance/sdk/component/d/c/a/a/a$b;

    invoke-static {v2}, Lcom/bytedance/sdk/component/d/c/a/a/a$b;->c(Lcom/bytedance/sdk/component/d/c/a/a/a$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/d/c/a/a/a;->c(Ljava/lang/String;)Z

    goto :goto_1c

    :cond_17
    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->a:Lcom/bytedance/sdk/component/d/c/a/a/a;

    invoke-static {v0, p0, v1}, Lcom/bytedance/sdk/component/d/c/a/a/a;->a(Lcom/bytedance/sdk/component/d/c/a/a/a;Lcom/bytedance/sdk/component/d/c/a/a/a$a;Z)V

    :goto_1c
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->e:Z

    return-void
.end method

.method public b()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/a/a/a$a;->a:Lcom/bytedance/sdk/component/d/c/a/a/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/bytedance/sdk/component/d/c/a/a/a;->a(Lcom/bytedance/sdk/component/d/c/a/a/a;Lcom/bytedance/sdk/component/d/c/a/a/a$a;Z)V

    return-void
.end method
