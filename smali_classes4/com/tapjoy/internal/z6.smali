###### Class com.tapjoy.internal.z6 (com.tapjoy.internal.z6)
.class public final Lcom/tapjoy/internal/z6;
.super Lcom/tapjoy/internal/q;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field public static final synthetic b:I


# instance fields
.field public final c:Ljava/util/HashMap;

.field public final d:Lcom/tapjoy/internal/a4;

.field public e:Z

.field public final f:Lcom/tapjoy/internal/o6;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/internal/z6;

    invoke-direct {v0}, Lcom/tapjoy/internal/z6;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/q;->a:Lcom/tapjoy/internal/q;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/tapjoy/internal/q;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/z6;->c:Ljava/util/HashMap;

    new-instance v0, Lcom/tapjoy/internal/a4;

    invoke-direct {v0}, Lcom/tapjoy/internal/a4;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/z6;->d:Lcom/tapjoy/internal/a4;

    new-instance v0, Lcom/tapjoy/internal/o6;

    invoke-direct {v0}, Lcom/tapjoy/internal/o6;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/z6;->f:Lcom/tapjoy/internal/o6;

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 3

    sget-object p1, Lcom/tapjoy/internal/a3;->a:Lcom/tapjoy/internal/n2;

    return-void
.end method
