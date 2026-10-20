###### Class com.ironsource.adqualitysdk.sdk.i.ip.c (com.ironsource.adqualitysdk.sdk.i.ip$c)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ip$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ip$c;->a:I

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ip$c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ｋ()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ip$c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final ﾒ()I
    .registers 2

    iget v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ip$c;->a:I

    return v0
.end method
