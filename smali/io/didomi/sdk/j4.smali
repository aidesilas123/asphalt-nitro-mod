###### Class io.didomi.drawable.C1801j4 (io.didomi.sdk.j4)
.class public final Lio/didomi/sdk/j4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/b<",
        "Lio/didomi/sdk/G8;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/g4;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/g4;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/j4;->a:Lio/didomi/sdk/g4;

    return-void
.end method

.method public static a(Lio/didomi/sdk/g4;)Lio/didomi/sdk/j4;
    .registers 2

    new-instance v0, Lio/didomi/sdk/j4;

    invoke-direct {v0, p0}, Lio/didomi/sdk/j4;-><init>(Lio/didomi/sdk/g4;)V

    return-object v0
.end method

.method public static b(Lio/didomi/sdk/g4;)Lio/didomi/sdk/G8;
    .registers 1

    invoke-virtual {p0}, Lio/didomi/sdk/g4;->a()Lio/didomi/sdk/G8;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/didomi/sdk/G8;

    return-object p0
.end method


# virtual methods
.method public a()Lio/didomi/sdk/G8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/j4;->a:Lio/didomi/sdk/g4;

    invoke-static {v0}, Lio/didomi/sdk/j4;->b(Lio/didomi/sdk/g4;)Lio/didomi/sdk/G8;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/j4;->a()Lio/didomi/sdk/G8;

    move-result-object v0

    return-object v0
.end method
