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
