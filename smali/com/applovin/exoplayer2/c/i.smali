###### Class com.applovin.exoplayer2.c.i (com.applovin.exoplayer2.c.i)
.class public abstract Lcom/applovin/exoplayer2/c/i;
.super Lcom/applovin/exoplayer2/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/c/i$a;
    }
.end annotation


# instance fields
.field public rA:I

.field public rJ:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract release()V
.end method

###### Class com.applovin.exoplayer2.c.i.a (com.applovin.exoplayer2.c.i$a)
.class public interface abstract Lcom/applovin/exoplayer2/c/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/applovin/exoplayer2/c/i;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract releaseOutputBuffer(Lcom/applovin/exoplayer2/c/i;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method
