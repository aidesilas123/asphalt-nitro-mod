###### Class io.didomi.drawable.C1757f0.a (io.didomi.sdk.f0$a)
.class final Lio/didomi/sdk/f0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lio/didomi/sdk/f0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/didomi/sdk/f0;

    invoke-direct {v0}, Lio/didomi/sdk/f0;-><init>()V

    sput-object v0, Lio/didomi/sdk/f0$a;->a:Lio/didomi/sdk/f0;

    return-void
.end method

.method static synthetic a()Lio/didomi/sdk/f0;
    .registers 1

    sget-object v0, Lio/didomi/sdk/f0$a;->a:Lio/didomi/sdk/f0;

    return-object v0
.end method
