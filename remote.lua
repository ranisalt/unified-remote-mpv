local kb = libs.keyboard;
local fs = libs.fs;

events.detect = function ()
	return
    fs.exists("/usr/bin/mplayer") or
    fs.exists("/bin/mplayer");
end

--@help Lower volume
actions.volume_down = function()
  kb.stroke("9");
end

--@help Mute volume
actions.volume_mute = function()
  kb.stroke("m");
end

--@help Raise volume
actions.volume_up = function()
  kb.stroke("0");
end

--@help Previous track
actions.previous = function()
  kb.stroke("<");
end

--@help Next track
actions.next = function()
  kb.stroke(">");
end

--@help Skip forward 10 secs
actions.forward = function()
  kb.stroke("right");
end

--@help Skip backward 10 secs
actions.backward = function()
  kb.stroke("left");
end

--@help Toggle play/pause state
actions.play_pause = function()
  kb.stroke("p");
end

--@help Stop playback
actions.stop = function()
  kb.stroke("q");
end

--@help Cycle through subtitles
actions.switch_subs = function()
  kb.stroke("j");
end

--@help Toggle subtitle visibility
actions.toggle_subs = function()
  kb.stroke("v");
end

--@help Toggle fullscreen
actions.fullscreen = function()
  kb.stroke("f");
end

actions.osd = function()
  kb.stroke("o");
end

--@help Increase subtitle delay
actions.subtitle_delay_down = function()
  kb.stroke("z");
end

--@help Decrease subtitle delay
actions.subtitle_delay_up = function()
  kb.stroke("x");
end

--@help Increase audio delay
actions.audio_delay_down = function()
  kb.stroke("minus");
end

--@help Decrease audio delay
actions.audio_delay_up = function()
  kb.stroke("plus");
end
