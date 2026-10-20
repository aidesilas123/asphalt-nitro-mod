###### Class io.didomi.drawable.C1862p5 (io.didomi.sdk.p5)
.class public final Lio/didomi/sdk/p5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/b<",
        "Lio/didomi/sdk/E8;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/m5;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/m5;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/p5;->a:Lio/didomi/sdk/m5;

    return-void
.end method

.method public static a(Lio/didomi/sdk/m5;)Lio/didomi/sdk/p5;
    .registers 2

    new-instance v0, Lio/didomi/sdk/p5;

    invoke-direct {v0, p0}, Lio/didomi/sdk/p5;-><init>(Lio/didomi/sdk/m5;)V

    return-object v0
.end method

.method public static b(Lio/didomi/sdk/m5;)Lio/didomi/sdk/E8;
    .registers 1

    invoke-virtual {p0}, Lio/didomi/sdk/m5;->a()Lio/didomi/sdk/E8;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/didomi/sdk/E8;

    return-object p0
.end method


# virtual methods
.method public a()Lio/didomi/sdk/E8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/p5;->a:Lio/didomi/sdk/m5;

    invoke-static {v0}, Lio/didomi/sdk/p5;->b(Lio/didomi/sdk/m5;)Lio/didomi/sdk/E8;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/p5;->a()Lio/didomi/sdk/E8;

    move-result-object v0

    return-object v0
.end method
