/*
 ==============================================================================

 This file is part of the JUCETICE project - Copyright 2009 by Lucio Asnaghi.

 JUCETICE is based around the JUCE library - "Jules' Utility Class Extensions"
 Copyright 2007 by Julian Storer.

 ------------------------------------------------------------------------------

 JUCE and JUCETICE can be redistributed and/or modified under the terms of
 the GNU General Public License, as published by the Free Software Foundation;
 either version 2 of the License, or (at your option) any later version.

 JUCE and JUCETICE are distributed in the hope that they will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with JUCE and JUCETICE; if not, visit www.gnu.org/licenses or write to
 Free Software Foundation, Inc., 59 Temple Place, Suite 330,
 Boston, MA 02111-1307 USA

 ==============================================================================
*/

BEGIN_JUCE_NAMESPACE

//==============================================================================
void ViewportListener::viewedComponentChanged (JuceticeViewport* const viewportThatChanged,
                                               Component* const newViewedComponent)
{
}

void ViewportListener::visibleAreaChanged (JuceticeViewport* const viewportThatChanged,
                                           int visibleX, int visibleY,
                                           int visibleW, int visibleH)
{
}

//==============================================================================
JuceticeViewport::JuceticeViewport (const String& componentName)
: Viewport (componentName)
{
	
}

JuceticeViewport::~JuceticeViewport()
{
	
}

void JuceticeViewport::visibleAreaChanged (const Rectangle<int>& newVisibleArea)
{
	for (int i = viewportListeners.size(); --i >= 0;)
	{
		((ViewportListener*) viewportListeners.getUnchecked (i))
		->visibleAreaChanged (this, newVisibleArea.getX(), newVisibleArea.getY(), 
							  newVisibleArea.getWidth(), newVisibleArea.getHeight());
	}
}

void JuceticeViewport::viewedComponentChanged (Component* newComponent)
{
	for (int i = viewportListeners.size(); --i >= 0;)
	{
		((ViewportListener*) viewportListeners.getUnchecked (i))
		->viewedComponentChanged (this, newComponent);
	}
}

//==============================================================================
void JuceticeViewport::addListener (ViewportListener* const newListener) throw()
{
    viewportListeners.addIfNotAlreadyThere (newListener);
}

void JuceticeViewport::removeListener (ViewportListener* const listenerToRemove) throw()
{
    int index = viewportListeners.indexOf (listenerToRemove);
    if (index >= 0)
        viewportListeners.remove (index);
}

void JuceticeViewport::notifyComponentChanged ()
{
    for (int i = viewportListeners.size(); --i >= 0;)
    {
        ((ViewportListener*) viewportListeners.getUnchecked (i))
		->viewedComponentChanged (this, getViewedComponent ());
    }
}


END_JUCE_NAMESPACE
