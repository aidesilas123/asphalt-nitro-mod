###### Class com.google.common.xml.XmlEscapers (com.google.common.xml.XmlEscapers)
.class public Lcom/google/common/xml/XmlEscapers;
.super Ljava/lang/Object;
.source "XmlEscapers.java"


# static fields
.field private static final a:Lcom/google/common/escape/d;

.field private static final b:Lcom/google/common/escape/d;

.field private static final c:Lcom/google/common/escape/d;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    invoke-static {}, Lcom/google/common/escape/Escapers;->builder()Lcom/google/common/escape/Escapers$b;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0xfffd

    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/Escapers$b;->d(CC)Lcom/google/common/escape/Escapers$b;

    const-string v2, "\ufffd"

    invoke-virtual {v0, v2}, Lcom/google/common/escape/Escapers$b;->e(Ljava/lang/String;)Lcom/google/common/escape/Escapers$b;

    :goto_10
    const/16 v3, 0x1f

    const/16 v4, 0xd

    const/16 v5, 0xa

    const/16 v6, 0x9

    if-gt v1, v3, :cond_27

    if-eq v1, v6, :cond_23

    if-eq v1, v5, :cond_23

    if-eq v1, v4, :cond_23

    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/Escapers$b;->b(CLjava/lang/String;)Lcom/google/common/escape/Escapers$b;

    :cond_23
    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_10

    :cond_27
    const/16 v1, 0x26

    const-string v2, "&amp;"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/Escapers$b;->b(CLjava/lang/String;)Lcom/google/common/escape/Escapers$b;

    const/16 v1, 0x3c

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/Escapers$b;->b(CLjava/lang/String;)Lcom/google/common/escape/Escapers$b;

    const/16 v1, 0x3e

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/Escapers$b;->b(CLjava/lang/String;)Lcom/google/common/escape/Escapers$b;

    invoke-virtual {v0}, Lcom/google/common/escape/Escapers$b;->c()Lcom/google/common/escape/d;

    move-result-object v1

    sput-object v1, Lcom/google/common/xml/XmlEscapers;->b:Lcom/google/common/escape/d;

    const/16 v1, 0x27

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/Escapers$b;->b(CLjava/lang/String;)Lcom/google/common/escape/Escapers$b;

    const/16 v1, 0x22

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/Escapers$b;->b(CLjava/lang/String;)Lcom/google/common/escape/Escapers$b;

    invoke-virtual {v0}, Lcom/google/common/escape/Escapers$b;->c()Lcom/google/common/escape/d;

    move-result-object v1

    sput-object v1, Lcom/google/common/xml/XmlEscapers;->a:Lcom/google/common/escape/d;

    const-string v1, "&#x9;"

    invoke-virtual {v0, v6, v1}, Lcom/google/common/escape/Escapers$b;->b(CLjava/lang/String;)Lcom/google/common/escape/Escapers$b;

    const-string v1, "&#xA;"

    invoke-virtual {v0, v5, v1}, Lcom/google/common/escape/Escapers$b;->b(CLjava/lang/String;)Lcom/google/common/escape/Escapers$b;

    const-string v1, "&#xD;"

    invoke-virtual {v0, v4, v1}, Lcom/google/common/escape/Escapers$b;->b(CLjava/lang/String;)Lcom/google/common/escape/Escapers$b;

    invoke-virtual {v0}, Lcom/google/common/escape/Escapers$b;->c()Lcom/google/common/escape/d;

    move-result-object v0

    sput-object v0, Lcom/google/common/xml/XmlEscapers;->c:Lcom/google/common/escape/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xmlAttributeEscaper()Lcom/google/common/escape/d;
    .registers 1

    sget-object v0, Lcom/google/common/xml/XmlEscapers;->c:Lcom/google/common/escape/d;

    return-object v0
.end method

.method public static xmlContentEscaper()Lcom/google/common/escape/d;
    .registers 1

    sget-object v0, Lcom/google/common/xml/XmlEscapers;->b:Lcom/google/common/escape/d;

    return-object v0
.end method
