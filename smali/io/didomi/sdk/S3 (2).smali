###### Class io.didomi.drawable.S3 (io.didomi.sdk.S3)
.class public final Lio/didomi/sdk/S3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/b<",
        "Lio/didomi/sdk/z3;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/Q3;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/Q3;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/S3;->a:Lio/didomi/sdk/Q3;

    return-void
.end method

.method public static a(Lio/didomi/sdk/Q3;)Lio/didomi/sdk/S3;
    .registers 2

    new-instance v0, Lio/didomi/sdk/S3;

    invoke-direct {v0, p0}, Lio/didomi/sdk/S3;-><init>(Lio/didomi/sdk/Q3;)V

    return-object v0
.end method

.method public static b(Lio/didomi/sdk/Q3;)Lio/didomi/sdk/z3;
    .registers 1

    invoke-virtual {p0}, Lio/didomi/sdk/Q3;->b()Lio/didomi/sdk/z3;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/didomi/sdk/z3;

    return-object p0
.end method


# virtual methods
.method public a()Lio/didomi/sdk/z3;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/S3;->a:Lio/didomi/sdk/Q3;

    invoke-static {v0}, Lio/didomi/sdk/S3;->b(Lio/didomi/sdk/Q3;)Lio/didomi/sdk/z3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/S3;->a()Lio/didomi/sdk/z3;

    move-result-object v0

    return-object v0
.end method
