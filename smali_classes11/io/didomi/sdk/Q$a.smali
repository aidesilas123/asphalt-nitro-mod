###### Class io.didomi.sdk.Q.a (io.didomi.sdk.Q$a)
.class final Lio/didomi/sdk/Q$a;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/Q;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "url",
        "",
        "a",
        "(Ljava/lang/String;)Ljava/lang/Boolean;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/Q;


# direct methods
.method constructor <init>(Lio/didomi/sdk/Q;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/Q$a;->a:Lio/didomi/sdk/Q;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/Q$a;->a:Lio/didomi/sdk/Q;

    invoke-static {v0}, Lio/didomi/sdk/Q;->b(Lio/didomi/sdk/Q;)Lio/didomi/sdk/U;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/U;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lio/didomi/sdk/Q$a;->a:Lio/didomi/sdk/Q;

    invoke-static {p1}, Lio/didomi/sdk/Q;->c(Lio/didomi/sdk/Q;)V

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/Q$a;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
