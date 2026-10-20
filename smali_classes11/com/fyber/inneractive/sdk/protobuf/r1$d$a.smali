###### Class com.fyber.inneractive.sdk.protobuf.r1.d.a (com.fyber.inneractive.sdk.protobuf.r1$d$a)
.class public final enum Lcom/fyber/inneractive/sdk/protobuf/r1$d$a;
.super Lcom/fyber/inneractive/sdk/protobuf/r1$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/r1$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fyber/inneractive/sdk/protobuf/r1$d;-><init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/protobuf/j;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/j;->r()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
