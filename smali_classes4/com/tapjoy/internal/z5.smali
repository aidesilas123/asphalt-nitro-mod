###### Class com.tapjoy.internal.z5 (com.tapjoy.internal.z5)
.class public abstract Lcom/tapjoy/internal/z5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final transient a:Lcom/tapjoy/internal/c1;

.field public transient b:I


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/q7;Lcom/tapjoy/internal/c1;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tapjoy/internal/z5;->b:I

    const-string p1, "unknownFields == null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/tapjoy/internal/z5;->a:Lcom/tapjoy/internal/c1;

    return-void
.end method


# virtual methods
.method public final c()Lcom/tapjoy/internal/c1;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/internal/z5;->a:Lcom/tapjoy/internal/c1;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/tapjoy/internal/c1;->b:Lcom/tapjoy/internal/c1;

    :goto_7
    return-object v0
.end method
