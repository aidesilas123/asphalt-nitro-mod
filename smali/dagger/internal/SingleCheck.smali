###### Class dagger.internal.SingleCheck (dagger.internal.SingleCheck)
.class public final Ldagger/internal/SingleCheck;
.super Ljava/lang/Object;
.source "SingleCheck.java"

# interfaces
.implements Ldagger/internal/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/c<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private volatile b:Ldagger/internal/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldagger/internal/SingleCheck;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ldagger/internal/c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/c<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ldagger/internal/SingleCheck;->a:Ljava/lang/Object;

    iput-object v0, p0, Ldagger/internal/SingleCheck;->c:Ljava/lang/Object;

    iput-object p1, p0, Ldagger/internal/SingleCheck;->b:Ldagger/internal/c;

    return-void
.end method

.method public static provider(Ldagger/internal/c;)Ldagger/internal/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Ldagger/internal/c<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Ldagger/internal/c<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Ldagger/internal/SingleCheck;

    if-nez v0, :cond_15

    instance-of v0, p0, Ldagger/internal/DoubleCheck;

    if-eqz v0, :cond_9

    goto :goto_15

    :cond_9
    new-instance v0, Ldagger/internal/SingleCheck;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldagger/internal/c;

    invoke-direct {v0, p0}, Ldagger/internal/SingleCheck;-><init>(Ldagger/internal/c;)V

    return-object v0

    :cond_15
    :goto_15
    return-object p0
.end method

.method public static provider(Le/a/a;)Le/a/a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Le/a/a<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Le/a/a<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ldagger/internal/Providers;->asDaggerProvider(Le/a/a;)Ldagger/internal/c;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/c;)Ldagger/internal/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Ldagger/internal/SingleCheck;->c:Ljava/lang/Object;

    sget-object v1, Ldagger/internal/SingleCheck;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Ldagger/internal/SingleCheck;->b:Ldagger/internal/c;

    if-nez v0, :cond_d

    iget-object v0, p0, Ldagger/internal/SingleCheck;->c:Ljava/lang/Object;

    goto :goto_16

    :cond_d
    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ldagger/internal/SingleCheck;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Ldagger/internal/SingleCheck;->b:Ldagger/internal/c;

    :cond_16
    :goto_16
    return-object v0
.end method
