###### Class com.tapjoy.r (com.tapjoy.r)
.class public Lcom/tapjoy/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tapjoy/r;->a:I

    iput-object p2, p0, Lcom/tapjoy/r;->b:Ljava/lang/String;

    return-void
.end method
