###### Class io.didomi.drawable.C1856p (io.didomi.sdk.p)
.class public final Lio/didomi/sdk/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/didomi/sdk/p;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method
