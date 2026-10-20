###### Class com.tapjoy.internal.q8 (com.tapjoy.internal.q8)
.class public final Lcom/tapjoy/internal/q8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJActionRequest;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/tapjoy/internal/q8;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tapjoy/internal/q8;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancelled()V
    .registers 1

    return-void
.end method

.method public final completed()V
    .registers 1

    return-void
.end method

.method public final getRequestId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/internal/q8;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/internal/q8;->b:Ljava/lang/String;

    return-object v0
.end method
