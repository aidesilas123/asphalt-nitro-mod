###### Class com.hyprmx.android.sdk.preload.q.i (com.hyprmx.android.sdk.preload.q$i)
.class public final Lcom/hyprmx/android/sdk/preload/q$i;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/preload/q;->a(Ljava/lang/String;Ljava/io/InputStream;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/s;",
        "Lkotlin/coroutines/d<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.preload.DiskLruCacheHelperImpl$putToDiskCache$2$1"
    f = "DiskLruCacheHelperImpl.kt"
    i = {
        0x0
    }
    l = {
        0xa0
    }
    m = "invokeSuspend"
    n = {
        "$this$withContext"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/hyprmx/android/sdk/preload/q;

.field public final synthetic d:Ljava/io/InputStream;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/preload/q;Ljava/io/InputStream;Ljava/lang/String;Lkotlin/coroutines/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/preload/q;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/preload/q$i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$i;->c:Lcom/hyprmx/android/sdk/preload/q;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/preload/q$i;->d:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/preload/q$i;->e:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Lkotlin/coroutines/d<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/hyprmx/android/sdk/preload/q$i;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/q$i;->c:Lcom/hyprmx/android/sdk/preload/q;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/preload/q$i;->d:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/hyprmx/android/sdk/preload/q$i;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/hyprmx/android/sdk/preload/q$i;-><init>(Lcom/hyprmx/android/sdk/preload/q;Ljava/io/InputStream;Ljava/lang/String;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lcom/hyprmx/android/sdk/preload/q$i;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/preload/q$i;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/preload/q$i;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/preload/q$i;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    const-string v0, "Unable to put to DiskLruCache with exception: "

    const-string v1, "There was an error during writing to the disk. key: "

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Lcom/hyprmx/android/sdk/preload/q$i;->a:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_20

    if-ne v3, v5, :cond_18

    iget-object v2, p0, Lcom/hyprmx/android/sdk/preload/q$i;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/s;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_42

    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$i;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/s;

    iget-object v3, p0, Lcom/hyprmx/android/sdk/preload/q$i;->c:Lcom/hyprmx/android/sdk/preload/q;

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$i;->b:Ljava/lang/Object;

    iput v5, p0, Lcom/hyprmx/android/sdk/preload/q$i;->a:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/r;

    move-result-object v6

    new-instance v7, Lcom/hyprmx/android/sdk/preload/t;

    invoke-direct {v7, v3, v4}, Lcom/hyprmx/android/sdk/preload/t;-><init>(Lcom/hyprmx/android/sdk/preload/q;Lkotlin/coroutines/d;)V

    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_40

    return-object v2

    :cond_40
    move-object v2, p1

    move-object p1, v3

    :goto_42
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v3, 0x0

    if-nez p1, :cond_55

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$i;->d:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_55
    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/q$i;->d:Ljava/io/InputStream;

    iget-object v6, p0, Lcom/hyprmx/android/sdk/preload/q$i;->c:Lcom/hyprmx/android/sdk/preload/q;

    iget-object v7, p0, Lcom/hyprmx/android/sdk/preload/q$i;->e:Ljava/lang/String;

    :try_start_5b
    iget-object v6, v6, Lcom/hyprmx/android/sdk/preload/q;->c:Lcom/hyprmx/android/sdk/utility/l;

    if-eqz v6, :cond_64

    invoke-virtual {v6, v7}, Lcom/hyprmx/android/sdk/utility/l;->i(Ljava/lang/String;)Lcom/hyprmx/android/sdk/utility/l$c;

    move-result-object v6
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_63} :catch_fc
    .catchall {:try_start_5b .. :try_end_63} :catchall_f8

    goto :goto_65

    :cond_64
    move-object v6, v4

    :goto_65
    if-nez v6, :cond_6f

    :try_start_67
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6b} :catch_f6
    .catchall {:try_start_67 .. :try_end_6b} :catchall_182

    invoke-static {p1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :cond_6f
    :try_start_6f
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-virtual {v6}, Lcom/hyprmx/android/sdk/utility/l$c;->b()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_78} :catch_f6
    .catchall {:try_start_6f .. :try_end_78} :catchall_182

    :try_start_78
    new-instance v9, Lcom/hyprmx/android/sdk/preload/q$i$a;

    invoke-direct {v9, v2}, Lcom/hyprmx/android/sdk/preload/q$i$a;-><init>(Lkotlinx/coroutines/s;)V

    const/16 v10, 0x2000

    const-string v11, "<this>"

    invoke-static {p1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "out"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "shouldCancel"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v10, v10, [B

    :goto_90
    invoke-virtual {p1, v10}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-ltz v11, :cond_a6

    invoke-virtual {v9}, Lcom/hyprmx/android/sdk/preload/q$i$a;->invoke()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_a6

    invoke-virtual {v8, v10, v3, v11}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_90

    :cond_a6
    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/s;)Z

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_ae
    .catchall {:try_start_78 .. :try_end_ae} :catchall_ef

    :try_start_ae
    invoke-static {v8, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b1} :catch_f6
    .catchall {:try_start_ae .. :try_end_b1} :catchall_182

    :try_start_b1
    iget-boolean v0, v6, Lcom/hyprmx/android/sdk/utility/l$c;->c:Z

    if-eqz v0, :cond_c4

    iget-object v0, v6, Lcom/hyprmx/android/sdk/utility/l$c;->d:Lcom/hyprmx/android/sdk/utility/l;

    invoke-static {v0, v6, v3}, Lcom/hyprmx/android/sdk/utility/l;->a(Lcom/hyprmx/android/sdk/utility/l;Lcom/hyprmx/android/sdk/utility/l$c;Z)V

    iget-object v0, v6, Lcom/hyprmx/android/sdk/utility/l$c;->d:Lcom/hyprmx/android/sdk/utility/l;

    iget-object v8, v6, Lcom/hyprmx/android/sdk/utility/l$c;->a:Lcom/hyprmx/android/sdk/utility/l$d;

    iget-object v8, v8, Lcom/hyprmx/android/sdk/utility/l$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/hyprmx/android/sdk/utility/l;->l(Ljava/lang/String;)Z

    goto :goto_c9

    :cond_c4
    iget-object v0, v6, Lcom/hyprmx/android/sdk/utility/l$c;->d:Lcom/hyprmx/android/sdk/utility/l;

    invoke-static {v0, v6, v5}, Lcom/hyprmx/android/sdk/utility/l;->a(Lcom/hyprmx/android/sdk/utility/l;Lcom/hyprmx/android/sdk/utility/l$c;Z)V

    :goto_c9
    iget-boolean v0, v6, Lcom/hyprmx/android/sdk/utility/l$c;->c:Z

    if-ne v0, v5, :cond_ce

    goto :goto_cf

    :cond_ce
    const/4 v5, 0x0

    :goto_cf
    if-eqz v5, :cond_eb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_e7
    .catchall {:try_start_b1 .. :try_end_e7} :catchall_19e

    invoke-static {p1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :cond_eb
    invoke-static {p1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :catchall_ef
    move-exception v2

    :try_start_f0
    throw v2
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_f1

    :catchall_f1
    move-exception v9

    :try_start_f2
    invoke-static {v8, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v9
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_f6} :catch_f6
    .catchall {:try_start_f2 .. :try_end_f6} :catchall_182

    :catch_f6
    move-exception v2

    goto :goto_fe

    :catchall_f8
    move-exception v2

    move-object v6, v4

    goto/16 :goto_183

    :catch_fc
    move-exception v2

    move-object v6, v4

    :goto_fe
    :try_start_fe
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to finish writing to DiskLruCache with exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_11a
    .catchall {:try_start_fe .. :try_end_11a} :catchall_182

    if-eqz v6, :cond_137

    :try_start_11c
    iget-boolean v8, v6, Lcom/hyprmx/android/sdk/utility/l$c;->c:Z

    if-eqz v8, :cond_12f

    iget-object v8, v6, Lcom/hyprmx/android/sdk/utility/l$c;->d:Lcom/hyprmx/android/sdk/utility/l;

    invoke-static {v8, v6, v3}, Lcom/hyprmx/android/sdk/utility/l;->a(Lcom/hyprmx/android/sdk/utility/l;Lcom/hyprmx/android/sdk/utility/l$c;Z)V

    iget-object v8, v6, Lcom/hyprmx/android/sdk/utility/l$c;->d:Lcom/hyprmx/android/sdk/utility/l;

    iget-object v9, v6, Lcom/hyprmx/android/sdk/utility/l$c;->a:Lcom/hyprmx/android/sdk/utility/l$d;

    iget-object v9, v9, Lcom/hyprmx/android/sdk/utility/l$d;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/hyprmx/android/sdk/utility/l;->l(Ljava/lang/String;)Z

    goto :goto_137

    :cond_12f
    iget-object v8, v6, Lcom/hyprmx/android/sdk/utility/l$c;->d:Lcom/hyprmx/android/sdk/utility/l;

    invoke-static {v8, v6, v5}, Lcom/hyprmx/android/sdk/utility/l;->a(Lcom/hyprmx/android/sdk/utility/l;Lcom/hyprmx/android/sdk/utility/l$c;Z)V

    goto :goto_137

    :catch_135
    move-exception v1

    goto :goto_15b

    :cond_137
    :goto_137
    if-eqz v6, :cond_13e

    iget-boolean v8, v6, Lcom/hyprmx/android/sdk/utility/l$c;->c:Z

    if-ne v8, v5, :cond_13e

    goto :goto_13f

    :cond_13e
    const/4 v5, 0x0

    :goto_13f
    if-eqz v5, :cond_17e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_157} :catch_135
    .catchall {:try_start_11c .. :try_end_157} :catchall_19e

    invoke-static {p1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :goto_15b
    :try_start_15b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V
    :try_end_171
    .catchall {:try_start_15b .. :try_end_171} :catchall_19e

    if-eqz v6, :cond_176

    :try_start_173
    invoke-virtual {v6}, Lcom/hyprmx/android/sdk/utility/l$c;->a()V
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_173 .. :try_end_176} :catch_176
    .catchall {:try_start_173 .. :try_end_176} :catchall_19e

    :catch_176
    :cond_176
    :try_start_176
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_17a
    .catchall {:try_start_176 .. :try_end_17a} :catchall_19e

    invoke-static {p1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :cond_17e
    invoke-static {p1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :catchall_182
    move-exception v2

    :goto_183
    if-eqz v6, :cond_1a2

    :try_start_185
    iget-boolean v8, v6, Lcom/hyprmx/android/sdk/utility/l$c;->c:Z

    if-eqz v8, :cond_198

    iget-object v8, v6, Lcom/hyprmx/android/sdk/utility/l$c;->d:Lcom/hyprmx/android/sdk/utility/l;

    invoke-static {v8, v6, v3}, Lcom/hyprmx/android/sdk/utility/l;->a(Lcom/hyprmx/android/sdk/utility/l;Lcom/hyprmx/android/sdk/utility/l$c;Z)V

    iget-object v8, v6, Lcom/hyprmx/android/sdk/utility/l$c;->d:Lcom/hyprmx/android/sdk/utility/l;

    iget-object v9, v6, Lcom/hyprmx/android/sdk/utility/l$c;->a:Lcom/hyprmx/android/sdk/utility/l$d;

    iget-object v9, v9, Lcom/hyprmx/android/sdk/utility/l$d;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/hyprmx/android/sdk/utility/l;->l(Ljava/lang/String;)Z

    goto :goto_1a2

    :cond_198
    iget-object v8, v6, Lcom/hyprmx/android/sdk/utility/l$c;->d:Lcom/hyprmx/android/sdk/utility/l;

    invoke-static {v8, v6, v5}, Lcom/hyprmx/android/sdk/utility/l;->a(Lcom/hyprmx/android/sdk/utility/l;Lcom/hyprmx/android/sdk/utility/l$c;Z)V

    goto :goto_1a2

    :catchall_19e
    move-exception v0

    goto :goto_1ea

    :catch_1a0
    move-exception v1

    goto :goto_1c6

    :cond_1a2
    :goto_1a2
    if-eqz v6, :cond_1a9

    iget-boolean v8, v6, Lcom/hyprmx/android/sdk/utility/l$c;->c:Z

    if-ne v8, v5, :cond_1a9

    goto :goto_1aa

    :cond_1a9
    const/4 v5, 0x0

    :goto_1aa
    if-eqz v5, :cond_1e9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_185 .. :try_end_1c2} :catch_1a0
    .catchall {:try_start_185 .. :try_end_1c2} :catchall_19e

    invoke-static {p1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :goto_1c6
    :try_start_1c6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V
    :try_end_1dc
    .catchall {:try_start_1c6 .. :try_end_1dc} :catchall_19e

    if-eqz v6, :cond_1e1

    :try_start_1de
    invoke-virtual {v6}, Lcom/hyprmx/android/sdk/utility/l$c;->a()V
    :try_end_1e1
    .catch Ljava/io/IOException; {:try_start_1de .. :try_end_1e1} :catch_1e1
    .catchall {:try_start_1de .. :try_end_1e1} :catchall_19e

    :catch_1e1
    :cond_1e1
    :try_start_1e1
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1e5
    .catchall {:try_start_1e1 .. :try_end_1e5} :catchall_19e

    invoke-static {p1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :cond_1e9
    :try_start_1e9
    throw v2
    :try_end_1ea
    .catchall {:try_start_1e9 .. :try_end_1ea} :catchall_19e

    :goto_1ea
    :try_start_1ea
    throw v0
    :try_end_1eb
    .catchall {:try_start_1ea .. :try_end_1eb} :catchall_1eb

    :catchall_1eb
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
