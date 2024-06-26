/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.studioblueplanet.styleconvert.data;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.JsonNode;

/**
 *
 * @author jorgen
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
public class Layout
{

    @JsonProperty("line-cap")
    private String lineCap;
    @JsonProperty("line-join")
    private String lineJoin;
    @JsonProperty("icon-image")
    private String iconImage;
    @JsonProperty("icon-allow-overlap")
    private Boolean iconAllowOverlap;
    @JsonProperty("icon-offset")
    private JsonNode iconOffset;
    @JsonProperty("icon-text-fit")
    private String iconTextFit;
    @JsonProperty("icon-text-fit-padding")
    private JsonNode iconTextFitPadding;
    @JsonProperty("symbol-placement")
    private String symbolPlacement;
    @JsonProperty("symbol-avoid-edges")
    private Boolean symbolAvoidEdges;
    @JsonProperty("symbol-spacing")
    private Float symbolSpacing;
    @JsonProperty("text-field")
    private String textField;
    @JsonProperty("text-font")
    private JsonNode textFont;
    @JsonProperty("text-line-height")
    private JsonNode textLineHeight;
    @JsonProperty("text-letter-spacing")
    private JsonNode textLetterSpacing;
    @JsonProperty("text-allow-overlap")
    private Boolean textAllowOverlap;
    @JsonProperty("text-transform")
    private String textTransform;

    @JsonProperty("text-size")
    private JsonNode textSize;
    @JsonProperty("text-offset")
    private JsonNode textOffset;
    @JsonProperty("text-anchor")
    private String textAnchor;
    @JsonProperty("text-max-width")
    private Float textMaxWidth;

    public String getLineCap()
    {
        return lineCap;
    }

    public void setLineCap(String lineCap)
    {
        this.lineCap = lineCap;
    }

    public String getLineJoin()
    {
        return lineJoin;
    }

    public void setLineJoin(String lineJoin)
    {
        this.lineJoin = lineJoin;
    }

    public String getSymbolPlacement()
    {
        return symbolPlacement;
    }

    public void setSymbolPlacement(String symbolPlacement)
    {
        this.symbolPlacement = symbolPlacement;
    }

    public Boolean getSymbolAvoidEdges()
    {
        return symbolAvoidEdges;
    }

    public void setSymbolAvoidEdges(Boolean symbolAvoidEdges)
    {
        this.symbolAvoidEdges = symbolAvoidEdges;
    }

    public Float getSymbolSpacing()
    {
        return symbolSpacing;
    }

    public void setSymbolSpacing(Float symbolSpacing)
    {
        this.symbolSpacing = symbolSpacing;
    }

    public String getIconImage()
    {
        return iconImage;
    }

    public void setIconImage(String iconImage)
    {
        this.iconImage = iconImage;
    }

    public Boolean getIconAllowOverlap()
    {
        return iconAllowOverlap;
    }

    public void setIconAllowOverlap(Boolean iconAllowOverlap)
    {
        this.iconAllowOverlap = iconAllowOverlap;
    }

    public String getTextField()
    {
        return textField;
    }

    public void setTextField(String textField)
    {
        this.textField = textField;
    }

    public JsonNode getTextFont()
    {
        return textFont;
    }

    public void setTextFont(JsonNode textFont)
    {
        this.textFont = textFont;
    }

    public JsonNode getTextSize()
    {
        return textSize;
    }

    public void setTextSize(JsonNode textSize)
    {
        this.textSize = textSize;
    }

    public JsonNode getTextOffset()
    {
        return textOffset;
    }

    public void setTextOffset(JsonNode textOffset)
    {
        this.textOffset = textOffset;
    }

    public String getTextAnchor()
    {
        return textAnchor;
    }

    public void setTextAnchor(String textAnchor)
    {
        this.textAnchor = textAnchor;
    }

    public Float getTextMaxWidth()
    {
        return textMaxWidth;
    }

    public void setTextMaxWidth(Float textMaxWidth)
    {
        this.textMaxWidth = textMaxWidth;
    }

    public JsonNode getIconOffset()
    {
        return iconOffset;
    }

    public void setIconOffset(JsonNode iconOffset)
    {
        this.iconOffset = iconOffset;
    }

    public String getIconTextFit()
    {
        return iconTextFit;
    }

    public void setIconTextFit(String iconTextFit)
    {
        this.iconTextFit = iconTextFit;
    }

    public JsonNode getIconTextFitPadding()
    {
        return iconTextFitPadding;
    }

    public void setIconTextFitPadding(JsonNode iconTextFitPadding)
    {
        this.iconTextFitPadding = iconTextFitPadding;
    }

    public String getTextTransform()
    {
        return textTransform;
    }

    public void setTextTransform(String textTransform)
    {
        this.textTransform = textTransform;
    }

    public JsonNode getTextLetterSpacing()
    {
        return textLetterSpacing;
    }

    public void setTextLetterSpacing(JsonNode textLetterSpacing)
    {
        this.textLetterSpacing = textLetterSpacing;
    }

    public JsonNode getTextLineHeight()
    {
        return textLineHeight;
    }

    public void setTextLineHeight(JsonNode textLineHeight)
    {
        this.textLineHeight = textLineHeight;
    }

    public Boolean getTextAllowOverlap()
    {
        return textAllowOverlap;
    }

    public void setTextAllowOverlap(Boolean textAllowOverlap)
    {
        this.textAllowOverlap = textAllowOverlap;
    }
}
