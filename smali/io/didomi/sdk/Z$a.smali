###### Class io.didomi.sdk.Z.a (io.didomi.sdk.Z$a)
.class final Lio/didomi/sdk/Z$a;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/Z;-><init>(Landroid/content/Context;Lio/didomi/sdk/DidomiInitializeParameters;Lio/didomi/sdk/z3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lio/didomi/sdk/b4;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lio/didomi/sdk/b4;",
        "a",
        "()Lio/didomi/sdk/b4;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/Z;


# direct methods
.method constructor <init>(Lio/didomi/sdk/Z;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/Z$a;->a:Lio/didomi/sdk/Z;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/didomi/sdk/b4;
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/Z$a;->a:Lio/didomi/sdk/Z;

    invoke-static {v0}, Lio/didomi/sdk/Z;->a(Lio/didomi/sdk/Z;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    new-instance v1, Lio/didomi/sdk/c4;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    invoke-direct {v1, v0}, Lio/didomi/sdk/c4;-><init>(Z)V

    invoke-virtual {v1}, Lio/didomi/sdk/c4;->a()Lio/didomi/sdk/b4;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/Z$a;->a()Lio/didomi/sdk/b4;

    move-result-object v0

    return-object v0
.end method
