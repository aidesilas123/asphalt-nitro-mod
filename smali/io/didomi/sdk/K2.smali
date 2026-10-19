###### Class io.didomi.drawable.K2 (io.didomi.sdk.K2)
.class public Lio/didomi/sdk/K2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0017\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0002H\u0017\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0003\u001a\u00020\u00028\u0012X\u0092\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lio/didomi/sdk/K2;",
        "",
        "Lio/didomi/sdk/M2;",
        "eventsRepository",
        "<init>",
        "(Lio/didomi/sdk/M2;)V",
        "a",
        "()Lio/didomi/sdk/M2;",
        "Lio/didomi/sdk/M2;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/M2;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/M2;)V
    .registers 3

    const-string v0, "eventsRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/K2;->a:Lio/didomi/sdk/M2;

    return-void
.end method


# virtual methods
.method public a()Lio/didomi/sdk/M2;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/K2;->a:Lio/didomi/sdk/M2;

    return-object v0
.end method
