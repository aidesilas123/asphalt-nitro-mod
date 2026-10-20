###### Class io.didomi.drawable.L2 (io.didomi.sdk.L2)
.class public final Lio/didomi/sdk/L2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/b<",
        "Lio/didomi/sdk/M2;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/K2;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/K2;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/L2;->a:Lio/didomi/sdk/K2;

    return-void
.end method

.method public static a(Lio/didomi/sdk/K2;)Lio/didomi/sdk/L2;
    .registers 2

    new-instance v0, Lio/didomi/sdk/L2;

    invoke-direct {v0, p0}, Lio/didomi/sdk/L2;-><init>(Lio/didomi/sdk/K2;)V

    return-object v0
.end method

.method public static b(Lio/didomi/sdk/K2;)Lio/didomi/sdk/M2;
    .registers 1

    invoke-virtual {p0}, Lio/didomi/sdk/K2;->a()Lio/didomi/sdk/M2;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/didomi/sdk/M2;

    return-object p0
.end method


# virtual methods
.method public a()Lio/didomi/sdk/M2;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/L2;->a:Lio/didomi/sdk/K2;

    invoke-static {v0}, Lio/didomi/sdk/L2;->b(Lio/didomi/sdk/K2;)Lio/didomi/sdk/M2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/L2;->a()Lio/didomi/sdk/M2;

    move-result-object v0

    return-object v0
.end method
