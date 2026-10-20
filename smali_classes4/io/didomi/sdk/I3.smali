###### Class io.didomi.drawable.C1790i3 (io.didomi.sdk.i3)
.class public final Lio/didomi/sdk/i3;
.super Lio/didomi/sdk/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/i3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/didomi/sdk/o<",
        "Lio/didomi/sdk/i3$a;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\nB\u0013\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00030\t2\u0006\u0010\u0008\u001a\u00020\u0002H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\n\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000fJ\u0019\u0010\n\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0010\u001a\u00020\u000eH\u0000\u00a2\u0006\u0004\u0008\n\u0010\u0011\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "Lio/didomi/sdk/i3;",
        "Lio/didomi/sdk/o;",
        "Lio/didomi/sdk/i3$a;",
        "Landroid/graphics/Bitmap;",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "coroutineDispatcher",
        "<init>",
        "(Lkotlinx/coroutines/CoroutineDispatcher;)V",
        "param",
        "Lio/didomi/sdk/y;",
        "a",
        "(Lio/didomi/sdk/i3$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "url",
        "Ljava/io/InputStream;",
        "(Ljava/lang/String;)Ljava/io/InputStream;",
        "inputStream",
        "(Ljava/io/InputStream;)Landroid/graphics/Bitmap;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/r;)V
    .registers 3

    const-string v0, "coroutineDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/didomi/sdk/o;-><init>(Lkotlinx/coroutines/r;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .registers 3

    const-string v0, "inputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    const/4 p1, 0x0

    :goto_10
    return-object p1
.end method

.method protected a(Lio/didomi/sdk/i3$a;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/i3$a;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/didomi/sdk/y<",
            "Landroid/graphics/Bitmap;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p1}, Lio/didomi/sdk/i3$a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_13

    sget-object p1, Lio/didomi/sdk/y;->c:Lio/didomi/sdk/y$a;

    const-string p2, "Url is empty"

    invoke-virtual {p1, p2}, Lio/didomi/sdk/y$a;->a(Ljava/lang/String;)Lio/didomi/sdk/y;

    move-result-object p1

    return-object p1

    :cond_13
    invoke-virtual {p1}, Lio/didomi/sdk/i3$a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lio/didomi/sdk/i3;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    if-nez p2, :cond_39

    sget-object p2, Lio/didomi/sdk/y;->c:Lio/didomi/sdk/y$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to load "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/didomi/sdk/i3$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/didomi/sdk/y$a;->a(Ljava/lang/String;)Lio/didomi/sdk/y;

    move-result-object p1

    return-object p1

    :cond_39
    invoke-virtual {p0, p2}, Lio/didomi/sdk/i3;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_5b

    sget-object p2, Lio/didomi/sdk/y;->c:Lio/didomi/sdk/y$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to decode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/didomi/sdk/i3$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/didomi/sdk/y$a;->a(Ljava/lang/String;)Lio/didomi/sdk/y;

    move-result-object p1

    return-object p1

    :cond_5b
    sget-object p1, Lio/didomi/sdk/y;->c:Lio/didomi/sdk/y$a;

    invoke-virtual {p1, p2}, Lio/didomi/sdk/y$a;->a(Ljava/lang/Object;)Lio/didomi/sdk/y;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lio/didomi/sdk/i3$a;

    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/i3;->a(Lio/didomi/sdk/i3$a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
