###### Class io.didomi.drawable.C1849o2 (io.didomi.sdk.o2)
.class public final Lio/didomi/sdk/o2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u001a\u0011\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lio/didomi/sdk/DidomiInitializeParameters;",
        "",
        "a",
        "(Lio/didomi/sdk/DidomiInitializeParameters;)V",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public static final a(Lio/didomi/sdk/DidomiInitializeParameters;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/j5;->a:Lio/didomi/sdk/j5;

    invoke-virtual {v0}, Lio/didomi/sdk/j5;->j()Lkotlin/text/Regex;

    move-result-object v0

    iget-object p0, p0, Lio/didomi/sdk/DidomiInitializeParameters;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lkotlin/text/Regex;->e(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_14

    return-void

    :cond_14
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Invalid Didomi API key"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
